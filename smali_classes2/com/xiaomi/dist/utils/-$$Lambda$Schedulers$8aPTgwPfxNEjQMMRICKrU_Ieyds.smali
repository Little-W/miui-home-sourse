.class public final synthetic Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$8aPTgwPfxNEjQMMRICKrU_Ieyds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$8aPTgwPfxNEjQMMRICKrU_Ieyds;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$8aPTgwPfxNEjQMMRICKrU_Ieyds;->f$0:I

    invoke-static {p0}, Lcom/xiaomi/dist/utils/Schedulers;->lambda$static$1(I)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
