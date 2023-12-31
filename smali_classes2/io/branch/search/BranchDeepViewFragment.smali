.class public Lio/branch/search/BranchDeepViewFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchDeepViewFragment$PercentScrollView;,
        Lio/branch/search/BranchDeepViewFragment$PercentImageView;,
        Lio/branch/search/BranchDeepViewFragment$d;,
        Lio/branch/search/BranchDeepViewFragment$Legacy;,
        Lio/branch/search/BranchDeepViewFragment$Modern;
    }
.end annotation


# static fields
.field private static final CLIENT:Lokhttp3/OkHttpClient;

.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static final KEY_HANDLERS:Ljava/lang/String; = "handlers"

.field private static final KEY_IMAGE:Ljava/lang/String; = "image"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "BranchDeepViewFragment"


# instance fields
.field private final description:Ljava/lang/String;

.field private final extra:Ljava/lang/String;

.field private final handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/branch/search/i;",
            ">;"
        }
    .end annotation
.end field

.field private final image:Ljava/lang/String;

.field private final parent:Lio/branch/search/BranchBaseLinkResult;

.field private final title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/branch/search/b5;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lio/branch/search/BranchDeepViewFragment;->CLIENT:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchBaseLinkResult;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchBaseLinkResult;",
            "Ljava/util/List<",
            "Lio/branch/search/i;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchDeepViewFragment;->parent:Lio/branch/search/BranchBaseLinkResult;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lio/branch/search/BranchDeepViewFragment;->handlers:Ljava/util/ArrayList;

    iput-object p3, p0, Lio/branch/search/BranchDeepViewFragment;->title:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/BranchDeepViewFragment;->description:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/BranchDeepViewFragment;->image:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/BranchDeepViewFragment;->extra:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 0

    invoke-static {p0}, Lio/branch/search/BranchDeepViewFragment;->createDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lio/branch/search/BranchDeepViewFragment;->inflateHierarchy(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/branch/search/BranchDeepViewFragment;->setUpHierarchy(Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/content/res/Resources;IF)I
    .locals 0

    invoke-static {p0, p1, p2}, Lio/branch/search/BranchDeepViewFragment;->getPercentMeasureSpec(Landroid/content/res/Resources;IF)I

    move-result p0

    return p0
.end method

.method private static createDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010308

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p0, Landroid/view/ContextThemeWrapper;

    sget v0, Lio/branch/search/R$style;->BranchDeepViewFragment:I

    invoke-direct {p0, v1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget v1, Lio/branch/search/R$drawable;->branch_deepview_background:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private getArguments()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment;->parent:Lio/branch/search/BranchBaseLinkResult;

    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment;->handlers:Ljava/util/ArrayList;

    const-string v2, "handlers"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment;->image:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment;->extra:Ljava/lang/String;

    const-string v1, "extra"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getPercentMeasureSpec(Landroid/content/res/Resources;IF)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private static inflateHierarchy(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    sget v0, Lio/branch/search/R$layout;->branch_deepview:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static loadImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-direct {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    sget v4, Lio/branch/search/R$dimen;->branch_deepview_loading_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setCenterRadius(F)V

    sget v4, Lio/branch/search/R$dimen;->branch_deepview_loading_stroke:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    const/4 v4, 0x1

    new-array v4, v4, [I

    sget v5, Lio/branch/search/R$color;->branch_deepview_loading:I

    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    aput v0, v4, v3

    invoke-virtual {v2, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    sget-object v0, Lio/branch/search/BranchDeepViewFragment;->CLIENT:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lio/branch/search/BranchDeepViewFragment$c;

    invoke-direct {v0, p0, p2, v1}, Lio/branch/search/BranchDeepViewFragment$c;-><init>(Landroid/widget/ImageView;ILandroid/content/res/Resources;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :goto_1
    return-void
.end method

.method private static loadText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private static setUpHierarchy(Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchBaseLinkResult;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lio/branch/search/R$id;->branch_deepview_app_name:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/branch/search/BranchBaseLinkResult;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/branch/search/BranchDeepViewFragment;->loadText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    sget v1, Lio/branch/search/R$id;->branch_deepview_app_icon:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    instance-of v2, v0, Lio/branch/search/BranchLinkResult;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lio/branch/search/BranchLinkResult;

    invoke-virtual {v2}, Lio/branch/search/BranchLinkResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/branch/search/R$dimen;->branch_deepview_app_icon_corners:I

    invoke-static {v1, v2, v3}, Lio/branch/search/BranchDeepViewFragment;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :cond_2
    sget v1, Lio/branch/search/R$id;->branch_deepview_title:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-static {v1, v2}, Lio/branch/search/BranchDeepViewFragment;->loadText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_3
    sget v1, Lio/branch/search/R$id;->branch_deepview_description:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-static {v1, v2}, Lio/branch/search/BranchDeepViewFragment;->loadText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_4
    sget v1, Lio/branch/search/R$id;->branch_deepview_extra:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "extra"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_5

    invoke-static {v1, v2}, Lio/branch/search/BranchDeepViewFragment;->loadText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_5
    sget v1, Lio/branch/search/R$id;->branch_deepview_image:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    const-string v2, "image"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/branch/search/R$dimen;->branch_deepview_image_corners:I

    invoke-static {v1, v2, v3}, Lio/branch/search/BranchDeepViewFragment;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :cond_6
    sget v1, Lio/branch/search/R$id;->branch_deepview_button:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_8

    new-instance v2, Lio/branch/search/BranchDeepViewFragment$a;

    invoke-direct {v2, p1, p0, v0, p2}, Lio/branch/search/BranchDeepViewFragment$a;-><init>(Landroid/os/Bundle;Landroid/view/View;Lio/branch/search/BranchBaseLinkResult;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lio/branch/search/R$id;->branch_deepview_close:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance p1, Lio/branch/search/BranchDeepViewFragment$b;

    invoke-direct {p1, p2}, Lio/branch/search/BranchDeepViewFragment$b;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call to action button is missing!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getInstance()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lio/branch/search/BranchDeepViewFragment$Modern;

    invoke-direct {v0}, Lio/branch/search/BranchDeepViewFragment$Modern;-><init>()V

    invoke-direct {p0}, Lio/branch/search/BranchDeepViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-object v0
.end method

.method public getLegacyInstance()Landroid/app/DialogFragment;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lio/branch/search/BranchDeepViewFragment$Legacy;

    invoke-direct {v0}, Lio/branch/search/BranchDeepViewFragment$Legacy;-><init>()V

    invoke-direct {p0}, Lio/branch/search/BranchDeepViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/app/DialogFragment;->setCancelable(Z)V

    return-object v0
.end method
