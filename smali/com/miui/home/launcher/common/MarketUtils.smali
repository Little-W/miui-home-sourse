.class public Lcom/miui/home/launcher/common/MarketUtils;
.super Ljava/lang/Object;
.source "MarketUtils.java"


# direct methods
.method static synthetic lambda$null$458()Z
    .locals 1

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasMoved()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$startUserGuide$457(Landroid/content/Context;Ljava/util/HashSet;Ljava/lang/Void;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 4

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 34
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/MarketManager;->getAppstoreUserGuide()Lcom/market/sdk/homeguide/AppstoreUserGuide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/homeguide/AppstoreUserGuide;->needShowUserGuide()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    invoke-static {p0}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/market/sdk/MarketManager;->getAppstoreUserGuide()Lcom/market/sdk/homeguide/AppstoreUserGuide;

    move-result-object p0

    invoke-virtual {p0}, Lcom/market/sdk/homeguide/AppstoreUserGuide;->getTargetPackageName()Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 44
    iget v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez v2, :cond_2

    .line 45
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    iget-wide p1, v1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-wide p0, v1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long p0, p0, v2

    if-nez p0, :cond_3

    .line 49
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$startUserGuide$459(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/market/sdk/homeguide/ViewConfig;

    invoke-direct {v2}, Lcom/market/sdk/homeguide/ViewConfig;-><init>()V

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->iconPaddingLeft:I

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->iconPaddingTop:I

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->iconPaddingRight:I

    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->iconPaddingBottom:I

    .line 67
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titlePaddingLeft:I

    .line 68
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titlePaddingTop:I

    .line 69
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titlePaddingRight:I

    .line 70
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titlePaddingBottom:I

    .line 71
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titleTextColor:I

    .line 72
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titleTextSize:F

    .line 73
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titleWidth:I

    .line 74
    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titleHeight:I

    .line 75
    iget-object v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titleLocation:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 76
    iget-object v0, v2, Lcom/market/sdk/homeguide/ViewConfig;->iconLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v0, 0x8

    .line 78
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setVisibility(I)V

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getHomePreview()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setVisibility(I)V

    const-string p1, "home_preview.jpg"

    .line 83
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {v1, v3, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    new-instance v3, Lcom/market/sdk/homeguide/HomeUserGuideData;

    invoke-direct {v3}, Lcom/market/sdk/homeguide/HomeUserGuideData;-><init>()V

    .line 88
    invoke-virtual {v3, v1}, Lcom/market/sdk/homeguide/HomeUserGuideData;->setHomeScreenUri(Landroid/net/Uri;)V

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/market/sdk/homeguide/HomeUserGuideData;->setLocalFilePath(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3, v2}, Lcom/market/sdk/homeguide/HomeUserGuideData;->setViewConfig(Lcom/market/sdk/homeguide/ViewConfig;)V

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->hasMoved()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Launcher.MarketUtils"

    const-string v1, "start user guide"

    .line 93
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p0}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/market/sdk/MarketManager;->getAppstoreUserGuide()Lcom/market/sdk/homeguide/AppstoreUserGuide;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$6YFe5hs5GrvAcSD2ARmUoJHLNKk;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$6YFe5hs5GrvAcSD2ARmUoJHLNKk;

    invoke-virtual {p0, v0, v3, p1}, Lcom/market/sdk/homeguide/AppstoreUserGuide;->tryShowUserGuide(Landroid/graphics/Bitmap;Lcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Interceptor;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static startUserGuide(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$c0QVlBTcd0T-VjqJ46WX3eZKo2s;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$c0QVlBTcd0T-VjqJ46WX3eZKo2s;-><init>(Landroid/content/Context;Ljava/util/HashSet;)V

    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$MMUTIg6zJRNOTUpuJO4V-jpG0Ec;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$MMUTIg6zJRNOTUpuJO4V-jpG0Ec;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-static {v0, p1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
