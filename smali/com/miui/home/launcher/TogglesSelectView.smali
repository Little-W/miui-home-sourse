.class public Lcom/miui/home/launcher/TogglesSelectView;
.super Lcom/miui/home/launcher/IconsSelectView;
.source "TogglesSelectView.java"


# instance fields
.field mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/IconsSelectView;-><init>(Landroid/content/Context;Z)V

    .line 21
    iput-object p2, p0, Lcom/miui/home/launcher/TogglesSelectView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 22
    invoke-direct {p0}, Lcom/miui/home/launcher/TogglesSelectView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/TogglesSelectView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;-><init>(Lcom/miui/home/launcher/IconsSelectView;Ljava/util/List;)V

    .line 29
    iget-object v0, p0, Lcom/miui/home/launcher/TogglesSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/TogglesSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/TogglesSelectView;->updateTitle()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/TogglesSelectView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    return-void
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .line 36
    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/TogglesSelectView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0078

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p2, v0, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    const v0, 0x7f0a0385

    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-static {p3}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getName(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/home/launcher/TogglesSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/TogglesSelectView;->setSelected(Landroid/view/ViewGroup;Z)V

    .line 48
    invoke-static {p3}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getGeneralImage(I)I

    move-result p1

    .line 47
    invoke-virtual {v0, p4, p1, p4, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 49
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public ok()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/TogglesSelectView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/TogglesSelectView;->mSelectedObject:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->completeSelectToggle(I)V

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/TogglesSelectView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    return-void
.end method

.method protected updateTitle()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/TogglesSelectView;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1104a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
