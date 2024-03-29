.class public abstract Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseWidgetsVerticalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;,
        Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;,
        Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

.field protected static final sCategoryMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDisabledComponents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sShortcutProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sToggles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field protected mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mScreenType:I

.field private mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.ContactShortcut"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    .line 87
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    sget-object v2, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/ShortcutProviderInfo;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    .line 90
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    .line 96
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v2, "com.xiaomi.calendar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.miui.notes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.miui.player"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.android.calculator2"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.miui.weather2"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    .line 117
    iput-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    return-object p0
.end method

.method private buildAppWidgetsItems(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 231
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 232
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 233
    iget-object v2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->needsHideFromPicker()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMinusScreen2x1Enabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 241
    :cond_1
    iget-boolean v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 246
    :cond_2
    sget-boolean v3, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_3

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 247
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.mi.globalminusscreen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 252
    :cond_3
    iget-object v1, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 254
    :cond_4
    sget-object v3, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 255
    sget-object v3, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mWidgetCategory:I

    .line 257
    :cond_5
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private buildDualClockItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 157
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getDualClockInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    const/16 v0, 0x8

    .line 158
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getDualClockInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private buildFirstLineItems(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xc

    .line 164
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 167
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 168
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    new-instance v4, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;-><init>(I)V

    .line 174
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ToggleId"

    .line 175
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iput-object v5, v4, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->mIntent:Landroid/content/Intent;

    .line 177
    iget-object v3, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->loadToggleInfo(Landroid/content/Context;)V

    const/4 v3, 0x3

    .line 178
    iput v3, v4, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->mIconType:I

    .line 179
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->getValidShortcutProviderInfos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    .line 182
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 184
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 185
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private buildGadgetItems(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getAllGadgetNum()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 192
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetInfoByIndex(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 194
    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildThemeClockItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->getStorageClocks()Ljava/util/List;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    .line 202
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getThemeClockGadgetInfo(Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;)Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getValidShortcutProviderInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutProviderInfo;",
            ">;"
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$l0lbedNzvFCbqUxsOllvrihahkM;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$l0lbedNzvFCbqUxsOllvrihahkM;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)V

    .line 122
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 123
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static synthetic lambda$setViewHolderAsync$4(Ljava/util/concurrent/Callable;Ljava/lang/Void;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 0

    .line 329
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$setViewHolderAsync$5(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 336
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract buildSecondLineItems(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public initAllItems()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->getInstalledProvidersForAllUser(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->loadMtzGadgetList()V

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_3

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 134
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.player"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 136
    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 137
    :cond_0
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-gtz v3, :cond_1

    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-gtz v3, :cond_1

    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 140
    :cond_1
    sget-object v3, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 145
    :cond_3
    sget-object v1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildFirstLineItems(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 146
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildSecondLineItems(Ljava/util/ArrayList;)V

    .line 147
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildGadgetItems(Ljava/util/ArrayList;)V

    .line 148
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildDualClockItems(Ljava/util/ArrayList;)V

    .line 149
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildThemeClockItems(Ljava/util/ArrayList;)V

    .line 150
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildAppWidgetsItems(Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    .line 210
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 211
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 214
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->isSameWidgetCategory(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    .line 223
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected isSameWidgetCategory(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;)Z
    .locals 3

    .line 262
    instance-of p0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    instance-of p0, p2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz p0, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryString()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    if-eq p0, v2, :cond_1

    .line 267
    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 263
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryId()I

    move-result p0

    const/16 v2, -0x3e7

    if-eq p0, v2, :cond_3

    .line 264
    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryId()I

    move-result p0

    invoke-interface {p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryId()I

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public synthetic lambda$getValidShortcutProviderInfos$0$BaseWidgetsVerticalAdapter(Lcom/miui/home/launcher/ShortcutProviderInfo;)Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$1$BaseWidgetsVerticalAdapter(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    .line 293
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 294
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 295
    iget-object v2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/ScreenUtils;->getProviderName(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    .line 296
    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public synthetic lambda$onBindViewHolder$2$BaseWidgetsVerticalAdapter(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    .line 302
    check-cast p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    .line 303
    iget v1, p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 304
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1104ce

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 305
    :cond_0
    iget p1, p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 306
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f11043e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 308
    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public synthetic lambda$onBindViewHolder$3$BaseWidgetsVerticalAdapter(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 313
    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    .line 314
    check-cast p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 315
    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    .line 316
    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 67
    check-cast p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V
    .locals 5

    if-nez p2, :cond_0

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 281
    :goto_0
    iget-object v1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 282
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    if-nez p2, :cond_1

    .line 284
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1104fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    const v1, 0x7f0806f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 288
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 290
    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_2

    .line 291
    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$LMW5eKRoxcoTdjEjCjfrPt7KCz4;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$LMW5eKRoxcoTdjEjCjfrPt7KCz4;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    goto :goto_1

    .line 299
    :cond_2
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    if-eqz v1, :cond_3

    .line 300
    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$izzgTr2OUJ3l21goh08uk1-vU6w;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$izzgTr2OUJ3l21goh08uk1-vU6w;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    goto :goto_1

    .line 311
    :cond_3
    instance-of v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v1, :cond_4

    .line 312
    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$I6ZCygdQeMERz6E2LygMU01tirY;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$I6ZCygdQeMERz6E2LygMU01tirY;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    .line 322
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setItemInfos(Ljava/util/ArrayList;)V

    .line 323
    iget-object p0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;
    .locals 2

    .line 273
    iget-object p2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0190

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 274
    new-instance p2, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setScreenType(I)V
    .locals 0

    .line 357
    iput p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mScreenType:I

    return-void
.end method

.method protected setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;",
            ">;)V"
        }
    .end annotation

    .line 327
    new-instance p0, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$ikZrKjB52YwbnkNHa5av7nyX8xg;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$ikZrKjB52YwbnkNHa5av7nyX8xg;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p2, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$BEfDGwPhPyDYlcyX_Ma5XiVM2nI;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$BEfDGwPhPyDYlcyX_Ma5XiVM2nI;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;)V

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
