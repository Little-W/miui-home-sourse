.class public Lcom/miui/home/launcher/FolderPreviewIconAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FolderPreviewIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;,
        Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;,
        Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisposable:Lio/reactivex2/disposables/Disposable;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mItemIconHeight:I

.field private mItemIconWidth:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPreviewIconInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mContext:Landroid/content/Context;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mPreviewIconInfo:Ljava/util/ArrayList;

    .line 48
    iput p2, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mItemIconWidth:I

    .line 49
    iput p3, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mItemIconHeight:I

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mPreviewIconInfo:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mItemIconWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mItemIconHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)Lcom/miui/home/launcher/IconCache;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mDisposable:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mPreviewIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->onBindViewHolder(Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;I)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mPreviewIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v1, p1, Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;->v:Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object p1, p1, Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;->v:Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mPreviewIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;->shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p2, p1, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;->mBuddyInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;
    .locals 3

    .line 56
    new-instance p2, Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refresh(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-static {p1}, Lio/reactivex2/Observable;->just(Ljava/lang/Object;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/FolderPreviewIconAdapter$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$5;-><init>(Lcom/miui/home/launcher/FolderPreviewIconAdapter;Ljava/util/ArrayList;)V

    .line 68
    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->map(Lio/reactivex2/functions/Function;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 85
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 86
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/FolderPreviewIconAdapter$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$4;-><init>(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)V

    .line 87
    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->map(Lio/reactivex2/functions/Function;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 96
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/FolderPreviewIconAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$3;-><init>(Lcom/miui/home/launcher/FolderPreviewIconAdapter;Ljava/util/ArrayList;)V

    .line 97
    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->map(Lio/reactivex2/functions/Function;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 116
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$1;-><init>(Lcom/miui/home/launcher/FolderPreviewIconAdapter;Ljava/util/ArrayList;)V

    new-instance p1, Lcom/miui/home/launcher/FolderPreviewIconAdapter$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$2;-><init>(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)V

    .line 117
    invoke-virtual {v0, v1, p1}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->mDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method
