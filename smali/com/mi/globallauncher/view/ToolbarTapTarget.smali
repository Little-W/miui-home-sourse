.class Lcom/mi/globallauncher/view/ToolbarTapTarget;
.super Lcom/mi/globallauncher/view/ViewTapTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;,
        Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;,
        Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/mi/globallauncher/view/ViewTapTarget;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method constructor <init>(Landroid/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/mi/globallauncher/view/ToolbarTapTarget;->findNavView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/mi/globallauncher/view/ToolbarTapTarget;->findOverflowView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/mi/globallauncher/view/ViewTapTarget;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/mi/globallauncher/view/ViewTapTarget;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/mi/globallauncher/view/ToolbarTapTarget;->findNavView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/mi/globallauncher/view/ToolbarTapTarget;->findOverflowView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/mi/globallauncher/view/ViewTapTarget;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static findNavView(Ljava/lang/Object;)Landroid/view/View;
    .locals 5

    invoke-static {p0}, Lcom/mi/globallauncher/view/ToolbarTapTarget;->proxyOf(Ljava/lang/Object;)Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "taptarget-findme"

    :goto_0
    invoke-interface {p0, v0}, Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x2

    invoke-interface {p0, v3, v0, v2}, Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    if-nez v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_2
    invoke-interface {p0}, Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-interface {p0, v1}, Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/ImageButton;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find navigation view for Toolbar!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Toolbar does not have a navigation view set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findOverflowView(Ljava/lang/Object;)Landroid/view/View;
    .locals 7

    invoke-static {p0}, Lcom/mi/globallauncher/view/ToolbarTapTarget;->proxyOf(Ljava/lang/Object;)Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-interface {p0}, Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;->internalToolbar()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-ne v6, v0, :cond_2

    return-object v5

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-interface {p0}, Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;->internalToolbar()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mMenuView"

    invoke-static {p0, v0}, Lcom/mi/globallauncher/view/ReflectUtil;->getPrivateField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mPresenter"

    invoke-static {p0, v0}, Lcom/mi/globallauncher/view/ReflectUtil;->getPrivateField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mOverflowButton"

    invoke-static {p0, v0}, Lcom/mi/globallauncher/view/ReflectUtil;->getPrivateField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to access overflow view for Toolbar!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find overflow view for Toolbar!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static proxyOf(Ljava/lang/Object;)Lcom/mi/globallauncher/view/ToolbarTapTarget$ToolbarProxy;
    .locals 1

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/view/ToolbarTapTarget$SupportToolbarProxy;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;

    check-cast p0, Landroid/widget/Toolbar;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/view/ToolbarTapTarget$StandardToolbarProxy;-><init>(Landroid/widget/Toolbar;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t provide proper toolbar proxy instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given null instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
