.class final Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolderIconPreviewAnimDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadItemIconsTransitionListener"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderIconPreviewAnimDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderIconPreviewAnimDelegate.kt\ncom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener\n*L\n1#1,135:1\n*E\n"
.end annotation


# instance fields
.field private final mDelegateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderInfoRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconCacheRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/IconCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreContainerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;",
            ">;"
        }
    .end annotation
.end field

.field private final mSerialExecutor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsePredict:Z

.field private final mWhitAnim:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pre"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialExecutor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mDelegateRef:Ljava/lang/ref/WeakReference;

    .line 94
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mPreContainerRef:Ljava/lang/ref/WeakReference;

    .line 95
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mFolderInfoRef:Ljava/lang/ref/WeakReference;

    .line 96
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mIconCacheRef:Ljava/lang/ref/WeakReference;

    .line 97
    iput-boolean p5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mUsePredict:Z

    .line 98
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mSerialExecutor:Ljava/lang/ref/WeakReference;

    .line 99
    iput-boolean p7, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mWhitAnim:Z

    return-void
.end method

.method private final runLoadAction()V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mDelegateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->recycle(Lmiuix/animation/listener/TransitionListener;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mPreContainerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    if-eqz v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mFolderInfoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_1

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mIconCacheRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/IconCache;

    if-eqz v3, :cond_1

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mSerialExecutor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    if-eqz v5, :cond_1

    const-string v0, "info"

    .line 123
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    .line 124
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-boolean v4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mUsePredict:Z

    const-string v0, "serialExecutor"

    .line 126
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-boolean v6, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->mWhitAnim:Z

    .line 122
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->runLoadAction(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->runLoadAction()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;->runLoadAction()V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void
.end method
