.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$-4pFE7ATiFmBqYeJFZNcS_d_gnI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/CellLayout;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$-4pFE7ATiFmBqYeJFZNcS_d_gnI;->f$0:Lcom/miui/home/launcher/CellLayout;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$-4pFE7ATiFmBqYeJFZNcS_d_gnI;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$-4pFE7ATiFmBqYeJFZNcS_d_gnI;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$-4pFE7ATiFmBqYeJFZNcS_d_gnI;->f$0:Lcom/miui/home/launcher/CellLayout;

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$-4pFE7ATiFmBqYeJFZNcS_d_gnI;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$-4pFE7ATiFmBqYeJFZNcS_d_gnI;->f$2:I

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$pushItemsInDistance$3(Lcom/miui/home/launcher/CellLayout;IILandroid/view/View;)Z

    move-result p1

    return p1
.end method
