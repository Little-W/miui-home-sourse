.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$44_S0eYD1yj1iqu53RV4QvI9jjk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/CellLayout;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$44_S0eYD1yj1iqu53RV4QvI9jjk;->f$0:Lcom/miui/home/launcher/CellLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$44_S0eYD1yj1iqu53RV4QvI9jjk;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$44_S0eYD1yj1iqu53RV4QvI9jjk;->f$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$44_S0eYD1yj1iqu53RV4QvI9jjk;->f$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$moveEffectedArea$8(Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method
