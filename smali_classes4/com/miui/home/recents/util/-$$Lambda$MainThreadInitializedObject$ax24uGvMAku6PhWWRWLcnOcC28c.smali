.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$ax24uGvMAku6PhWWRWLcnOcC28c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/MainThreadInitializedObject;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/MainThreadInitializedObject;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$ax24uGvMAku6PhWWRWLcnOcC28c;->f$0:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    iput-object p2, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$ax24uGvMAku6PhWWRWLcnOcC28c;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$ax24uGvMAku6PhWWRWLcnOcC28c;->f$0:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$ax24uGvMAku6PhWWRWLcnOcC28c;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->lambda$get$0$MainThreadInitializedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
