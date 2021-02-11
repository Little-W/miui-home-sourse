.class Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffectFactory;
.super Landroid/mysupport/v7/widget/RecyclerView$EdgeEffectFactory;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/view/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffectFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/view/SpringRelativeLayout;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/view/SpringRelativeLayout;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    invoke-direct {p0}, Landroid/mysupport/v7/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/view/SpringRelativeLayout;Lcom/miui/home/launcher/view/SpringRelativeLayout$1;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffectFactory;-><init>(Lcom/miui/home/launcher/view/SpringRelativeLayout;)V

    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Landroid/mysupport/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 151
    invoke-super {p0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Landroid/mysupport/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;

    iget-object p2, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    invoke-virtual {p2}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, -0x41666666    # -0.3f

    invoke-direct {p1, p2, v0, v1}, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;-><init>(Lcom/miui/home/launcher/view/SpringRelativeLayout;Landroid/content/Context;F)V

    return-object p1

    .line 147
    :cond_1
    new-instance p1, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;

    iget-object p2, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    invoke-virtual {p2}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p1, p2, v0, v1}, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;-><init>(Lcom/miui/home/launcher/view/SpringRelativeLayout;Landroid/content/Context;F)V

    return-object p1
.end method
