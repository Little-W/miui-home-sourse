.class public final synthetic Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$CLI-XObGztS2iu7RD22eoA3PpJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field private final synthetic f$0:Lcom/google/firebase/components/ComponentRuntime;

.field private final synthetic f$1:Lcom/google/firebase/components/Component;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$CLI-XObGztS2iu7RD22eoA3PpJU;->f$0:Lcom/google/firebase/components/ComponentRuntime;

    iput-object p2, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$CLI-XObGztS2iu7RD22eoA3PpJU;->f$1:Lcom/google/firebase/components/Component;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$CLI-XObGztS2iu7RD22eoA3PpJU;->f$0:Lcom/google/firebase/components/ComponentRuntime;

    iget-object p0, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$CLI-XObGztS2iu7RD22eoA3PpJU;->f$1:Lcom/google/firebase/components/Component;

    invoke-virtual {v0, p0}, Lcom/google/firebase/components/ComponentRuntime;->lambda$discoverComponents$0$ComponentRuntime(Lcom/google/firebase/components/Component;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
