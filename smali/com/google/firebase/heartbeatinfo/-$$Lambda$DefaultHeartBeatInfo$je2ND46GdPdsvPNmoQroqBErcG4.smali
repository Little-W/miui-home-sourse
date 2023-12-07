.class public final synthetic Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$je2ND46GdPdsvPNmoQroqBErcG4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$je2ND46GdPdsvPNmoQroqBErcG4;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$je2ND46GdPdsvPNmoQroqBErcG4;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->lambda$new$1(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    move-result-object p0

    return-object p0
.end method
