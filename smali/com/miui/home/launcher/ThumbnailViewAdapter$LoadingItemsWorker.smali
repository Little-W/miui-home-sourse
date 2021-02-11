.class Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;
.super Ljava/lang/Object;
.source "ThumbnailViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingItemsWorker"
.end annotation


# instance fields
.field private mCounter:I

.field private mIsLoading:Z

.field private mItemsCount:I

.field final synthetic this$0:Lcom/miui/home/launcher/ThumbnailViewAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->this$0:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/ThumbnailViewAdapter;Lcom/miui/home/launcher/ThumbnailViewAdapter$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;-><init>(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->mIsLoading:Z

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->this$0:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->mCounter:I

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->loadContent(I)V

    .line 81
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->mCounter:I

    .line 82
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->mCounter:I

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->mItemsCount:I

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->mIsLoading:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->this$0:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->stopLoading()V

    :goto_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->this$0:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->this$0:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;->mIsLoading:Z

    return-void
.end method
