.class public Lcom/miui/home/launcher/WidgetPreviewLoader;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_DENSITY:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    sput v0, Lcom/miui/home/launcher/WidgetPreviewLoader;->DEFAULT_DENSITY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private assignmentHostViewPreview(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 110
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/miui/launcher/views/LauncherWidgetHostView;

    iget-object v1, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/launcher/views/LauncherWidgetHostView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1, v0, p1, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetHostViewPreview(Lcom/miui/launcher/views/LauncherWidgetHostView;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V

    .line 114
    iput-object v0, p2, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mDetailsPreview:Landroid/view/View;

    .line 116
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mDescription:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private compressDrawableToQueryResult(Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gt v0, p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-le v0, p4, :cond_1

    .line 125
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {p2, v0, p3, p4}, Lcom/miui/home/launcher/common/Utilities;->getThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 127
    :cond_1
    iput-object p2, p1, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method


# virtual methods
.method public queryPreview(Lcom/miui/home/launcher/ItemInfo;II)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 30
    instance-of v0, p1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;-><init>()V

    .line 32
    check-cast p1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    .line 33
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getFullResIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->compressDrawableToQueryResult(Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    .line 35
    iput-boolean v2, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsPreview:Z

    .line 36
    iput-boolean v1, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsShowDetails:Z

    return-object v0

    .line 38
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;-><init>()V

    .line 40
    iget-object v3, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    check-cast p1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v3

    .line 41
    iget-object v4, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v4, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 42
    iget v4, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->compressDrawableToQueryResult(Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    .line 44
    iput-boolean v2, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsPreview:Z

    .line 45
    iput-boolean v1, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsShowDetails:Z

    return-object v0

    .line 47
    :cond_1
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_4

    .line 48
    new-instance v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;-><init>()V

    .line 49
    check-cast p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 50
    iget-object v3, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    .line 51
    iget-object v3, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->compressDrawableToQueryResult(Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    .line 52
    iput-boolean v2, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsPreview:Z

    .line 53
    iget-object v3, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->compressDrawableToQueryResult(Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    .line 55
    iput-boolean v1, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsPreview:Z

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_3

    .line 58
    iput-boolean v2, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsShowDetails:Z

    :cond_3
    return-object v0

    .line 61
    :cond_4
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 62
    new-instance v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;-><init>()V

    .line 63
    check-cast p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    .line 64
    iput-boolean v2, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsPreview:Z

    .line 65
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v4

    invoke-virtual {p1, v2, v4, v3}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 66
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->compressDrawableToQueryResult(Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    .line 68
    iget-object p1, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 69
    iget-object p1, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 71
    :cond_5
    iput-boolean v1, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsShowDetails:Z

    return-object v0

    .line 73
    :cond_6
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_b

    .line 74
    new-instance v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;-><init>()V

    .line 75
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 76
    iget-object v4, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v4, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/WidgetPreviewLoader;->assignmentHostViewPreview(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V

    .line 78
    iget-object v4, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v4, :cond_8

    .line 79
    iput-boolean v2, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsPreview:Z

    .line 80
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/home/launcher/WidgetPreviewLoader;->DEFAULT_DENSITY:I

    invoke-virtual {v1, v3, v4}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_7

    .line 82
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/home/launcher/WidgetPreviewLoader;->DEFAULT_DENSITY:I

    invoke-virtual {v1, v3, v4}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 84
    :cond_7
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->compressDrawableToQueryResult(Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_1

    .line 86
    :cond_8
    iput-boolean v1, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsPreview:Z

    .line 88
    :try_start_0
    iget-object v4, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 89
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-ne v4, v5, :cond_9

    .line 90
    iget-object v4, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->compressDrawableToQueryResult(Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;Landroid/graphics/drawable/Drawable;II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 93
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 95
    :cond_9
    :goto_0
    iget-object v1, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_a

    .line 96
    iget-object v1, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 97
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 96
    invoke-virtual {v1, v4, v5, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->compressDrawableToQueryResult(Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    .line 101
    :cond_a
    :goto_1
    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->getBadgeForUser(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 102
    iput-boolean v2, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsShowDetails:Z

    return-object v0

    .line 105
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
