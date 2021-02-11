.class public Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;
.super Landroid/mysupport/v7/widget/RecyclerView$Adapter;
.source "WidgetsVerticalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/mysupport/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

.field private static final sCategoryMaps:Ljava/util/HashMap;
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
.field private mAllItems:Ljava/util/ArrayList;
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

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mScreenType:I

.field private mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.ContactShortcut"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    .line 82
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    sget-object v2, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/ShortcutProviderInfo;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    .line 85
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    .line 91
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.android.calendar"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.xiaomi.calendar"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.miui.notes"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.miui.player"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.android.calculator2"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.miui.weather2"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    .line 112
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    return-object p0
.end method

.method private buildAppWidgetsItems(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 4
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

    .line 230
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 231
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 232
    new-instance v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 233
    iget-object v1, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 235
    :cond_0
    sget-object v3, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    sget-object v3, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mWidgetCategory:I

    .line 238
    :cond_1
    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->calcWidgetSpans(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 239
    invoke-direct {p0, v2, p2}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
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

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 156
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getDualClockInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    const/16 v0, 0x8

    .line 157
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getDualClockInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

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

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xc

    .line 163
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 166
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 167
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    new-instance v4, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;-><init>(I)V

    .line 173
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ToggleId"

    .line 174
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    iput-object v5, v4, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->mIntent:Landroid/content/Intent;

    .line 176
    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->loadToggleInfo(Landroid/content/Context;)V

    const/4 v3, 0x3

    .line 177
    iput v3, v4, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->mIconType:I

    .line 178
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->getValidShortcutProviderInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    .line 181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 183
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 184
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

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getAllGadgetNum()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 191
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetInfoByIndex(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 193
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

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

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->getStorageClocks()Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    .line 201
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getThemeClockGadgetInfo(Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;)Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

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

    .line 116
    sget-object v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsVerticalAdapter$xSdw3-D5TR5dlLUJ6zyQe9LMQjs;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsVerticalAdapter$xSdw3-D5TR5dlLUJ6zyQe9LMQjs;-><init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    .line 117
    invoke-interface {v0, v1}, Ljava8/util/stream/Stream;->filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object v0

    .line 118
    invoke-static {}, Ljava8/util/stream/Collectors;->toList()Ljava8/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava8/util/stream/Stream;->collect(Ljava8/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V
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

    .line 209
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 210
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 213
    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->isSameWidgetCategory(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private isSameWidgetCategory(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 244
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 245
    instance-of v0, p2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_1

    .line 246
    check-cast p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getCategoryId()I

    move-result p1

    check-cast p2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 247
    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getCategoryId()I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 248
    :cond_1
    instance-of v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_6

    .line 249
    check-cast p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getCategoryId()I

    move-result p1

    check-cast p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    iget p2, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mWidgetCategory:I

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 252
    :cond_3
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_6

    .line 253
    instance-of v0, p2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_5

    .line 254
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    iget p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mWidgetCategory:I

    check-cast p2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 255
    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getCategoryId()I

    move-result p2

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    .line 256
    :cond_5
    instance-of v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_6

    .line 257
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 258
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 259
    check-cast p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 260
    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    return v2
.end method

.method public static synthetic lambda$getValidShortcutProviderInfos$0(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;Lcom/miui/home/launcher/ShortcutProviderInfo;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$initAllItems$1(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public initAllItems()V
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->getInstalledProvidersForAllUser(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->loadMtzGadgetList()V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lez v1, :cond_3

    .line 128
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    const-string v4, "com.miui.player"

    .line 129
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 131
    invoke-interface {v0, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 132
    :cond_0
    iget v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-gtz v4, :cond_1

    iget v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-gtz v4, :cond_1

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 135
    :cond_1
    sget-object v4, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 140
    :cond_3
    iget v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mScreenType:I

    if-eq v1, v2, :cond_4

    if-nez v1, :cond_5

    .line 142
    :cond_4
    sget-object v1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->buildFirstLineItems(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 144
    :cond_5
    iget v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mScreenType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    if-nez v1, :cond_7

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->buildGadgetItems(Ljava/util/ArrayList;)V

    .line 147
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->buildDualClockItems(Ljava/util/ArrayList;)V

    .line 148
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->buildThemeClockItems(Ljava/util/ArrayList;)V

    .line 149
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->buildAppWidgetsItems(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 151
    :cond_7
    new-instance v0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsVerticalAdapter$jhjHnFxjzpSumsppU6kjrVmZJ3Y;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsVerticalAdapter$jhjHnFxjzpSumsppU6kjrVmZJ3Y;-><init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 62
    check-cast p1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->onBindViewHolder(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;I)V
    .locals 5

    if-nez p2, :cond_0

    .line 274
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 276
    :goto_0
    iget-object v1, p1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 277
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    if-nez p2, :cond_1

    .line 279
    iget-object v0, p1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f100278

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    iget-object v0, p1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    const v1, 0x7f08022e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    const-string v2, ""

    .line 286
    instance-of v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v3, :cond_2

    .line 287
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 288
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 289
    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/miui/home/launcher/ScreenUtils;->getProviderName(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 290
    iget-object v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    iget-object v1, p1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 292
    :cond_2
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    if-eqz v1, :cond_4

    .line 293
    check-cast v0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    .line 294
    iget v1, v0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 296
    :cond_3
    iget v0, v0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 299
    :cond_4
    instance-of v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v1, :cond_5

    .line 300
    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 301
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 302
    iget-object v1, p1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_6
    :goto_2
    iget-object v0, p1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setItemInfos(Ljava/util/ArrayList;)V

    .line 308
    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;
    .locals 2

    .line 268
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00c9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 269
    new-instance p2, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;-><init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setScreenType(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mScreenType:I

    return-void
.end method
