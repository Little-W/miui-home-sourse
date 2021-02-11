.class public Lcom/miui/home/launcher/upsidescene/AppsSelectView;
.super Lcom/miui/home/launcher/IconsSelectView;
.source "AppsSelectView.java"


# instance fields
.field private mComponents:[Landroid/content/ComponentName;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/SceneScreen;[Landroid/content/ComponentName;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p4}, Lcom/miui/home/launcher/IconsSelectView;-><init>(Landroid/content/Context;Z)V

    .line 37
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 39
    iput-object p3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mComponents:[Landroid/content/ComponentName;

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->init()V

    return-void
.end method

.method private init()V
    .locals 8

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 51
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p0, v1, v5, v4}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->getShortcutInfo(Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/IconCache;Landroid/content/pm/ResolveInfo;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v4

    .line 52
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;

    invoke-direct {v0, p0, v3}, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;-><init>(Lcom/miui/home/launcher/IconsSelectView;Ljava/util/List;)V

    .line 55
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mComponents:[Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    move v1, v2

    .line 59
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 60
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 61
    array-length v4, v0

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 62
    iget-object v7, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->updateTitle()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->closeSelectApps(Z)V

    return-void
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;
    .locals 4

    .line 74
    check-cast p4, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0045

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p2, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    const p3, 0x7f0a01cd

    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p4}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/upsidescene/AppsSelectView$1;

    invoke-direct {v3, p0, p3}, Lcom/miui/home/launcher/upsidescene/AppsSelectView$1;-><init>(Lcom/miui/home/launcher/upsidescene/AppsSelectView;Landroid/widget/TextView;)V

    invoke-virtual {p4, v0, v1, v2, v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava8/util/function/Consumer;)V

    .line 93
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->setSelected(Landroid/view/ViewGroup;Z)V

    .line 94
    invoke-virtual {p2, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/IconCache;Landroid/content/pm/ResolveInfo;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 6

    .line 136
    new-instance p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p2}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 138
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 139
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 145
    :goto_0
    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 146
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 147
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    .line 148
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 149
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)Ljava8/util/function/Consumer;

    move-result-object v0

    .line 147
    invoke-virtual {p2, v1, v3, v4, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava8/util/function/Consumer;)V

    .line 152
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 155
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :cond_1
    const/4 p1, 0x0

    .line 158
    iput p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    return-object p2
.end method

.method public ok()V
    .locals 6

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->canMultiSelect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 104
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 105
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v4, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->canMultiSelect()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onSelectApps(Ljava/util/List;Z)V

    goto :goto_1

    .line 112
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mSelectedObject:Ljava/lang/Object;

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->canMultiSelect()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onSelectApps(Ljava/util/List;Z)V

    .line 116
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->closeSelectApps(Z)V

    return-void
.end method

.method protected updateTitle()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContext:Landroid/content/Context;

    const v3, 0x7f10010a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getCheckedItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
