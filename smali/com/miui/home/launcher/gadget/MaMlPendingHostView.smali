.class public Lcom/miui/home/launcher/gadget/MaMlPendingHostView;
.super Lcom/miui/home/launcher/maml/MaMlHostView;
.source "MaMlPendingHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/interfaces/AutoAlignable;


# instance fields
.field private mDefaultView:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsDownloading:Z

.field private mNeedDownloadMark:Landroid/widget/ImageView;

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 42
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIsDownloading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->install(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method

.method private getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private install(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 1

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->installMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method

.method private isCanAutoStartDownload()Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/NetWorkUtils;->isNetWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->isMamlDownloadNeverWarn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$onAttachedToWindow$0(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->scheduleDownloadAction()V

    return-void
.end method

.method private scheduleDownloadAction()V
    .locals 3

    .line 146
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 147
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->addSource:I

    invoke-static {v0}, Lcom/miui/home/launcher/util/ItemInfoConfigurationUtil;->isShowDownloadWaringDialog(I)Z

    move-result v0

    .line 148
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->isCanAutoStartDownload()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->isMamlDownloadOnlyWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const v1, 0x7f100263

    goto :goto_0

    :cond_1
    const v1, 0x7f100264

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 157
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->showMaMlDownloadWarnDialog()V

    goto :goto_2

    .line 150
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->install(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private showMaMlDownloadWarnDialog()V
    .locals 4

    .line 127
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    new-instance v3, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$1;-><init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/gadget/MaMlUtil;->showDownloadMaMlWarningDialog(Landroid/content/Context;JLcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disableCutRoundCorner()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0a014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIcon:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0a01d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mProgress:Landroid/widget/ProgressBar;

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mNeedDownloadMark:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    iget-object v2, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->transitionBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 74
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->transitionBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    if-nez v1, :cond_1

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getUniqueTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/home/launcher/util/BitmapUtil;->getSaveBitmapAbsPathByUniqueTag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :catch_0
    :cond_1
    if-nez v1, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080521

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onAttachedToWindow()V

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlPendingHostView$lVfyzzVDkvhmzGM5rFE8LfabILY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlPendingHostView$lVfyzzVDkvhmzGM5rFE8LfabILY;-><init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 99
    :try_start_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIsDownloading:Z

    if-nez p1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->scheduleDownloadAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateProgress(II)V
    .locals 3

    const/4 p2, 0x0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 109
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIsDownloading:Z

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mNeedDownloadMark:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
