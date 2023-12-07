.class public final synthetic Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$Builder$PuZUk0ZoyoJafAUrHnbCxfAdM_4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field private final synthetic f$0:Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/ComponentRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$Builder$PuZUk0ZoyoJafAUrHnbCxfAdM_4;->f$0:Lcom/google/firebase/components/ComponentRegistrar;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$Builder$PuZUk0ZoyoJafAUrHnbCxfAdM_4;->f$0:Lcom/google/firebase/components/ComponentRegistrar;

    invoke-static {p0}, Lcom/google/firebase/components/ComponentRuntime$Builder;->lambda$addComponentRegistrar$0(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object p0

    return-object p0
.end method
