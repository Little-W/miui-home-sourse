.class public final Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;
.super Ljava/lang/Object;
.source "FoldQuitEditModeInterceptor.kt"

# interfaces
.implements Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;


# instance fields
.field private launcher:Lcom/miui/home/launcher/Launcher;

.field private mEditStateChangeReason:Lcom/miui/home/launcher/EditStateChangeReason;

.field private mIsInterceptQuitEditMode:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->launcher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private final quitEditMode()V
    .locals 4

    .line 41
    iget-boolean v0, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->mIsInterceptQuitEditMode:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->launcher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 43
    iget-object v3, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->mEditStateChangeReason:Lcom/miui/home/launcher/EditStateChangeReason;

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->mIsInterceptQuitEditMode:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final isInterceptQuitEditMode(ILcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 0

    .line 18
    iput-object p2, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->mEditStateChangeReason:Lcom/miui/home/launcher/EditStateChangeReason;

    .line 21
    iget-boolean p2, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->mIsInterceptQuitEditMode:Z

    if-nez p2, :cond_0

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->isLastCellLayoutEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string p2, "Application.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    const-string p1, "launcher.workspace"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInLastScreenIndex()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLastCellLayoutEmpty()Z
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    const-string v1, "launcher.workspace"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onScrollAnimEnd()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->quitEditMode()V

    return-void
.end method

.method public final startScrollToNextScreen()V
    .locals 3

    .line 30
    iget-boolean v0, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->mIsInterceptQuitEditMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->mIsInterceptQuitEditMode:Z

    .line 32
    iget-object v1, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/fold/FoldQuitEditModeInterceptor;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    const-string v2, "launcher.workspace"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)I

    :cond_0
    return-void
.end method
