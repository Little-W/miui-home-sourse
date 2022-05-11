.class public final Lcom/miui/home/settings/HideAppAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HideAppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/HideAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private switchBut:Lmiuix/slidingwidget/widget/SlidingButton;

.field final synthetic this$0:Lcom/miui/home/settings/HideAppAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/home/settings/HideAppAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->this$0:Lcom/miui/home/settings/HideAppAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    iget-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0061

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.app_icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 97
    iget-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0062

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.app_name)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 98
    iget-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0133

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.hide_switch)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->switchBut:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method


# virtual methods
.method public final getIcon()Landroid/widget/ImageView;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getName()Landroid/widget/TextView;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getSwitchBut()Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->switchBut:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object v0
.end method
