.class Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;
.super Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonEdgeEffectFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView$1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 0

    new-instance p0, Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffect;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffect;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
