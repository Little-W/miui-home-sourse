.class public final Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DeleteAppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/DeleteAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private installBut:Landroid/widget/TextView;

.field private name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/home/settings/DeleteAppAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/home/settings/DeleteAppAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a006e

    .line 135
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.app_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f0a006f

    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.app_name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->name:Landroid/widget/TextView;

    const p1, 0x7f0a03b1

    .line 137
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.tv_install)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->installBut:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getIcon()Landroid/widget/ImageView;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getInstallBut()Landroid/widget/TextView;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->installBut:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getName()Landroid/widget/TextView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter$MyViewHolder;->name:Landroid/widget/TextView;

    return-object p0
.end method
