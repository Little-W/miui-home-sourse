.class Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IBranchSearchAlgorithm;


# static fields
.field private static volatile instance:Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;


# instance fields
.field private mBranchSearchAlgorithm:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/branchInterface/IBranchSearchAlgorithm;
    .locals 2

    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;->instance:Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;->instance:Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;

    invoke-direct {v1}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;-><init>()V

    sput-object v1, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;->instance:Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;->instance:Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;

    return-object v0
.end method


# virtual methods
.method public doUniSearch(Ljava/lang/String;Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;->mBranchSearchAlgorithm:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->doUniSearch(Ljava/lang/String;Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    new-instance v0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-direct {v0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;->mBranchSearchAlgorithm:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    return-void
.end method

.method public judgeBranchAlgorithmNonNull()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;->mBranchSearchAlgorithm:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setInterruptActiveRequests(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;->mBranchSearchAlgorithm:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->setInterruptActiveRequests(Z)V

    :cond_0
    return-void
.end method
