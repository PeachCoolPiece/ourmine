/*
 * package kr.or.ddit;
 *
 * import static org.junit.Assert.*;
 *
 * import java.io.File; import java.io.IOException; import java.util.ArrayList;
 * import java.util.Iterator; import java.util.List; import java.util.Map;
 * import java.util.Map.Entry; import java.util.Set;
 *
 * import org.apache.commons.codec.binary.StringUtils; import
 * org.apache.commons.lang3.builder.ToStringBuilder; import
 * org.eclipse.jgit.lib.AnyObjectId; import org.eclipse.jgit.lib.ObjectId;
 * import org.eclipse.jgit.lib.ObjectLoader; import org.eclipse.jgit.lib.Ref;
 * import org.eclipse.jgit.lib.RefUpdate; import
 * org.eclipse.jgit.lib.Repository; import
 * org.eclipse.jgit.storage.file.FileRepositoryBuilder; import org.junit.Before;
 * import org.junit.Test; import org.kohsuke.github.GHRepository; import
 * org.kohsuke.github.GHUser; import org.kohsuke.github.GitHub; import
 * org.kohsuke.github.GitHubBuilder;
 *
 * import kr.or.ddit.projectAttend.vo.GitVO;
 *
 * public class GitTest {
 *
 * @Before public void setUp() throws Exception { }
 *
 * @Test public void test() throws IOException {
 *
 * GitHub github = new
 * GitHubBuilder().withOAuthToken("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").
 * build();
 *
 * System.out.println(github.getApiUrl()); System.out.println(github.getMeta());
 * System.out.println(github.getMeta().getPackages());
 * System.out.println(github.getMeta().getApi());
 * System.out.println(github.getMeta().getGit());
 * System.out.println(github.getMeta().getWeb());
 *
 *
 * System.out.println(ToStringBuilder.reflectionToString(github.getMeta()));
 *
 *
 * System.out.println("========================================");
 *
 * GHUser user = github.getUser("PeachCoolPiece");
 *
 * GitVO gitVO = new GitVO(); gitVO.setUsername(user.getName()); List<String>
 * repositories = new ArrayList<>(); for (GHRepository repo :
 * user.getRepositories().values()) { repositories.add(repo.getName());
 * System.out.println(repo.getName()); repo.enableIssueTracker(true);
 * repo.createIssue("잘되려나.."); System.out.println(repo.getOpenIssueCount());
 *
 *
 * }
 *
 * // Open an existing repository Repository repo = new
 * FileRepositoryBuilder().setGitDir(new
 * File("C:\\Users\\PC-24\\git\\servlet\\.git")) .build();
 *
 * // Get a reference // Ref master = repo.getRef("master"); Ref master = null;
 *
 * Map<AnyObjectId, Set<Ref>> masters = repo.getAllRefsByPeeledObjectId();
 *
 * AnyObjectId anyObjectId = null;
 *
 * Set<Entry<AnyObjectId, Set<Ref>>> ddd = masters.entrySet();
 *
 * for (Entry<AnyObjectId, Set<Ref>> entry : ddd) {
 * System.out.println(entry.getKey()); System.out.println(entry.getValue());
 * anyObjectId = entry.getKey(); // master = entry.getValue();
 *
 * for (Iterator<Ref> it = entry.getValue().iterator(); it.hasNext();) { master
 * = it.next(); System.out.println(master);
 *
 * }
 *
 * }
 *
 * System.out.println(master);
 *
 * // Get the object the reference points to ObjectId masterTip =
 * master.getObjectId();
 *
 * System.out.println(masterTip.getName()); System.out.println(masterTip);
 *
 * // Rev-parse ObjectId obj = repo.resolve("HEAD^{tree}");
 *
 * System.out.println(obj.getName());
 *
 * // Load raw object contents // ObjectLoader loader = repo.open(masterTip); //
 * loader.copyTo(System.out);
 *
 * // Create a branch RefUpdate createBranch1 =
 * repo.updateRef("refs/heads/branch1");
 * createBranch1.setNewObjectId(masterTip); createBranch1.update();
 *
 * // Delete a branch // RefUpdate deleteBranch1 =
 * repo.updateRef("refs/heads/branch1"); // deleteBranch1.setForceUpdate(true);
 * // deleteBranch1.delete();
 *
 * // fail("Not yet implemented"); }
 *
 * }
 */