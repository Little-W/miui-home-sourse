.class public final synthetic Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$bYCxfDHCCtKtPQ0FOyo_5DAveg0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;ILjava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$bYCxfDHCCtKtPQ0FOyo_5DAveg0;->f$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    iput p2, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$bYCxfDHCCtKtPQ0FOyo_5DAveg0;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$bYCxfDHCCtKtPQ0FOyo_5DAveg0;->f$2:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$bYCxfDHCCtKtPQ0FOyo_5DAveg0;->f$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$bYCxfDHCCtKtPQ0FOyo_5DAveg0;->f$1:I

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$bYCxfDHCCtKtPQ0FOyo_5DAveg0;->f$2:Ljava/util/Collection;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->lambda$onDelete$1(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;ILjava/util/Collection;Landroid/content/DialogInterface;I)V

    return-void
.end method
