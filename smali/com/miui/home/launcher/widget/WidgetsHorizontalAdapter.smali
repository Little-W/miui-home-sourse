.class public Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WidgetsHorizontalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;,
        Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 60
    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 61
    iput-object p3, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private static compressDrawableToQueryResult(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gt v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 233
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->getThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 235
    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$365(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Lcom/miui/home/launcher/ItemInfo;II)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    check-cast p1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 111
    iget v2, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1, p2, p3}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->compressDrawableToQueryResult(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mIsPreview:Z

    return-object v0
.end method

.method public static synthetic lambda$onBindViewHolder$366(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Lcom/miui/home/launcher/ItemInfo;II)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;-><init>()V

    .line 119
    check-cast p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getPreviewImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->compressDrawableToQueryResult(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mIsPreview:Z

    .line 121
    iget-object v1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->compressDrawableToQueryResult(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    const/4 p2, 0x0

    .line 123
    iput-boolean p2, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mIsPreview:Z

    .line 125
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic lambda$onBindViewHolder$367(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Lcom/miui/home/launcher/ItemInfo;II)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;-><init>()V

    .line 131
    check-cast p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    const/4 v1, 0x1

    .line 132
    iput-boolean v1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mIsPreview:Z

    .line 133
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 134
    invoke-static {v0, p1, p2, p3}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->compressDrawableToQueryResult(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    .line 136
    iget-object p1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$onBindViewHolder$368(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Lcom/miui/home/launcher/ItemInfo;II)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;-><init>()V

    .line 144
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 145
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 146
    iput-boolean v1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mIsPreview:Z

    .line 147
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 151
    :cond_0
    invoke-static {v0, v1, p2, p3}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->compressDrawableToQueryResult(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    .line 153
    :cond_1
    iput-boolean v2, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mIsPreview:Z

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 156
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    iget-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-ne v2, v3, :cond_2

    .line 157
    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->compressDrawableToQueryResult(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;Landroid/graphics/drawable/Drawable;II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :catch_0
    :cond_2
    iget-object v1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 163
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v4, 0x0

    .line 162
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->compressDrawableToQueryResult(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;Landroid/graphics/drawable/Drawable;II)V

    .line 167
    :cond_3
    :goto_0
    iget-object p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object p2, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    .line 168
    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->getBadgeForUser(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mBadge:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic lambda$setViewHolderAsync$369(Ljava/util/concurrent/Callable;Ljava/lang/Void;)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;
    .locals 0

    .line 210
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$setViewHolderAsync$370(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-ne v0, p1, :cond_1

    if-nez p3, :cond_0

    .line 218
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object v0, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-boolean v1, p3, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mIsPreview:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetCell;->setIsPreview(Z)V

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object v0, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    iget-object p3, p3, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p0, p3}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setImageDrawable(IILandroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static setImageDrawable(IILandroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p4, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07027b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    if-eq p1, v1, :cond_2

    .line 71
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-ne p0, p1, :cond_3

    .line 72
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07027c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p1, p0

    .line 73
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    .line 74
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 75
    invoke-virtual {p2, v1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    sub-int/2addr v0, p0

    .line 76
    div-int/lit8 v0, v0, 0x2

    int-to-float p0, v0

    div-float v0, p0, v1

    div-float/2addr p0, p1

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :cond_3
    int-to-float p0, v0

    .line 79
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 80
    invoke-virtual {p2, p0, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 82
    :goto_0
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 83
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static setViewHolderAsync(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Landroid/graphics/Matrix;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            "Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;",
            "Landroid/graphics/Matrix;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;",
            ">;)V"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$TDyVreVU5f_xUGHOHlbC-1IlvRA;

    invoke-direct {v0, p3}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$TDyVreVU5f_xUGHOHlbC-1IlvRA;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p3, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$nqkqrrLvGmY4qY78Ky6wsCtkO0g;

    invoke-direct {p3, p1, p0, p2}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$nqkqrrLvGmY4qY78Ky6wsCtkO0g;-><init>(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;)V

    const/4 p0, 0x0

    invoke-static {v0, p3, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mItemInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 183
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 47
    check-cast p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->onBindViewHolder(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;I)V
    .locals 10

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 95
    iput-object v0, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 97
    iget-object v1, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    .line 98
    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/WidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 100
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 101
    iget-object v3, v1, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    const-string v4, "%d x %d"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget v7, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget v7, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 103
    iget-object v4, v1, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x7f100075

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07027b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 106
    instance-of v4, v0, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v4, :cond_0

    .line 107
    new-instance v4, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;

    invoke-direct {v4, p0, v0, v3, v3}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$CJLW1bj4_aPg6Xp8DehBvvseUAI;-><init>(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Lcom/miui/home/launcher/ItemInfo;II)V

    invoke-static {v0, p1, v2, v4}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Landroid/graphics/Matrix;Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 116
    :cond_0
    instance-of v4, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v4, :cond_1

    .line 117
    new-instance v4, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$v6f4kutk_KrEIAp7M-Fzxp72b98;

    invoke-direct {v4, p0, v0, v3, v3}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$v6f4kutk_KrEIAp7M-Fzxp72b98;-><init>(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Lcom/miui/home/launcher/ItemInfo;II)V

    invoke-static {v0, p1, v2, v4}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Landroid/graphics/Matrix;Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 128
    :cond_1
    instance-of v4, v0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    if-eqz v4, :cond_2

    .line 129
    new-instance v4, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$em3TTkEM71f5xyLRN1M3GG3nv3w;

    invoke-direct {v4, p0, v0, v3, v3}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$em3TTkEM71f5xyLRN1M3GG3nv3w;-><init>(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Lcom/miui/home/launcher/ItemInfo;II)V

    invoke-static {v0, p1, v2, v4}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Landroid/graphics/Matrix;Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 141
    :cond_2
    instance-of v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v4, :cond_3

    .line 142
    new-instance v4, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$kZ_x1wDDxjBl_6hSP5xS1XopHXE;

    invoke-direct {v4, p0, v0, v3, v3}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$kZ_x1wDDxjBl_6hSP5xS1XopHXE;-><init>(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Lcom/miui/home/launcher/ItemInfo;II)V

    invoke-static {v0, p1, v2, v4}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Landroid/graphics/Matrix;Ljava/util/concurrent/Callable;)V

    .line 172
    :cond_3
    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v1}, Lcom/miui/home/launcher/widget/WidgetCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-nez p2, :cond_4

    goto :goto_1

    .line 174
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070279

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_1
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMarginStart(I)V

    .line 175
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;
    .locals 2

    .line 88
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00d7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    new-instance p2, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;-><init>(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mItemInfos:Ljava/util/ArrayList;

    return-void
.end method
