.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$OxePxCtMy_7ILvjd-8BCz9F7CSA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/CellLayout;

.field private final synthetic f$1:Lcom/miui/home/launcher/CellLayout$ItemArea;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$ItemArea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$OxePxCtMy_7ILvjd-8BCz9F7CSA;->f$0:Lcom/miui/home/launcher/CellLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$OxePxCtMy_7ILvjd-8BCz9F7CSA;->f$1:Lcom/miui/home/launcher/CellLayout$ItemArea;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$OxePxCtMy_7ILvjd-8BCz9F7CSA;->f$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$OxePxCtMy_7ILvjd-8BCz9F7CSA;->f$1:Lcom/miui/home/launcher/CellLayout$ItemArea;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$getEffectedArea$4(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/view/View;)V

    return-void
.end method
