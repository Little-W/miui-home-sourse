.class public final synthetic Lcom/miui/home/launcher/russia/-$$Lambda$BaseRussiaPreInstallAppsRepository$XngAeEsOtw-3qDnzllVwuzvs1RU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/russia/-$$Lambda$BaseRussiaPreInstallAppsRepository$XngAeEsOtw-3qDnzllVwuzvs1RU;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/russia/-$$Lambda$BaseRussiaPreInstallAppsRepository$XngAeEsOtw-3qDnzllVwuzvs1RU;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/miui/home/launcher/russia/BaseRussiaPreInstallAppsRepository;->lambda$getDataFromDeepLink$0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
