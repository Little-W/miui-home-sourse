.class public Lcom/miui/home/launcher/ThumbnailViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThumbnailViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;
    }
.end annotation


# static fields
.field public static final THUMBNAIL_BACKGROUND:[I


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mIsRefreshing:Z

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLoadingItemsWorker:Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;

.field private mSourceGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->THUMBNAIL_BACKGROUND:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0806d9
        0x7f0806da
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mIsRefreshing:Z

    .line 92
    new-instance v0, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;-><init>(Lcom/miui/home/launcher/ThumbnailViewAdapter;Lcom/miui/home/launcher/ThumbnailViewAdapter$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mLoadingItemsWorker:Lcom/miui/home/launcher/ThumbnailViewAdapter$LoadingItemsWorker;

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public adaptIconStyle(Landroid/view/View;)Z
    .locals 2

    const v0, 0x7f0a0085

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 50
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->THUMBNAIL_BACKGROUND:[I

    sget v1, Lcom/miui/home/launcher/ThumbnailView;->CURR_ICON_DRAWABLE_INDEX:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getCount()I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mSourceGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mSourceGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    int-to-long p0, p0

    :goto_0
    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method isRefreshing()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mIsRefreshing:Z

    return p0
.end method

.method protected loadContent(I)V
    .locals 0

    return-void
.end method

.method public refreshList()V
    .locals 0

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailViewAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method
