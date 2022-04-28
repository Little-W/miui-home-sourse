.class public Lcom/mi/globallauncher/DragIconGuide;
.super Ljava/lang/Object;
.source "DragIconGuide.java"


# static fields
.field private static final instance:Lcom/mi/globallauncher/DragIconGuide;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/mi/globallauncher/DragIconGuide;

    invoke-direct {v0}, Lcom/mi/globallauncher/DragIconGuide;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/DragIconGuide;->instance:Lcom/mi/globallauncher/DragIconGuide;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createTapTarget(Landroid/view/View;)Lcom/mi/globallauncher/view/TapTarget;
    .locals 4

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    const-string v2, ",\n"

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    invoke-static {p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->forView(Landroid/view/View;Ljava/lang/CharSequence;)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    const v0, 0x7f060095

    .line 84
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->outerCircleColor(I)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    const v0, 0x3f75c28f    # 0.96f

    .line 85
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->outerCircleAlpha(F)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    const/16 v0, 0x50

    .line 86
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->outerCirclePadding(I)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v1}, Lcom/mi/globallauncher/view/TapTarget;->autoCalculateOuterCircleCenterPoint(Z)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    const v2, 0x7f0603e5

    .line 88
    invoke-virtual {p1, v2}, Lcom/mi/globallauncher/view/TapTarget;->targetCircleColor(I)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    const/16 v3, 0x12

    .line 89
    invoke-virtual {p1, v3}, Lcom/mi/globallauncher/view/TapTarget;->titleTextSize(I)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v2}, Lcom/mi/globallauncher/view/TapTarget;->titleTextColor(I)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    const v2, 0x3fa66666    # 1.3f

    .line 91
    invoke-virtual {p1, v2}, Lcom/mi/globallauncher/view/TapTarget;->titleTextSpacingMult(F)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->textGravity(I)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    const/16 v0, 0x21

    .line 93
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->textPadding(I)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    const v0, 0x7f060076

    .line 94
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->dimColor(I)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v1}, Lcom/mi/globallauncher/view/TapTarget;->drawShadow(Z)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->cancelable(Z)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTarget;->transparentTarget(Z)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/mi/globallauncher/DragIconGuide;
    .locals 1

    .line 34
    sget-object v0, Lcom/mi/globallauncher/DragIconGuide;->instance:Lcom/mi/globallauncher/DragIconGuide;

    return-object v0
.end method


# virtual methods
.method public showGuide(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)Lcom/mi/globallauncher/view/TapTargetView;
    .locals 8

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 44
    instance-of v3, v2, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-nez v3, :cond_1

    return-object v0

    .line 47
    :cond_1
    check-cast v2, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_3

    .line 48
    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 51
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 52
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v6, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 53
    new-instance v7, Lcom/mi/globallauncher/view/TapTargetView;

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/mi/globallauncher/DragIconGuide;->createTapTarget(Landroid/view/View;)Lcom/mi/globallauncher/view/TapTarget;

    move-result-object v4

    new-instance v5, Lcom/mi/globallauncher/DragIconGuide$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/mi/globallauncher/DragIconGuide$1;-><init>(Lcom/mi/globallauncher/DragIconGuide;Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mi/globallauncher/view/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)V

    .line 68
    invoke-virtual {p1, v7, v6}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setDragIconToHomeGuideShow()V

    return-object v7

    :cond_3
    :goto_0
    return-object v0
.end method
