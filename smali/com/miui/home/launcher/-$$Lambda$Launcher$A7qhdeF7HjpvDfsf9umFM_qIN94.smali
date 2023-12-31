.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$A7qhdeF7HjpvDfsf9umFM_qIN94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$A7qhdeF7HjpvDfsf9umFM_qIN94;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$A7qhdeF7HjpvDfsf9umFM_qIN94;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$A7qhdeF7HjpvDfsf9umFM_qIN94;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$A7qhdeF7HjpvDfsf9umFM_qIN94;->f$1:Ljava/util/List;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$updateIconWhenInstallForSomeContainer$74(Ljava/util/List;Ljava/util/List;Landroid/util/Pair;)V

    return-void
.end method
