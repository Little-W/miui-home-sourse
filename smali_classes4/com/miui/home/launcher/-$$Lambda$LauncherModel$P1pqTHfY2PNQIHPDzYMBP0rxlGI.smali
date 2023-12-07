.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$P1pqTHfY2PNQIHPDzYMBP0rxlGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$P1pqTHfY2PNQIHPDzYMBP0rxlGI;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$P1pqTHfY2PNQIHPDzYMBP0rxlGI;->f$0:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->lambda$resizeAppIconDatabaseWhitUICallback$5(Ljava/util/ArrayList;Ljava/util/Map$Entry;)V

    return-void
.end method
