.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$Ct0MUhqgOXzo92HEkT8py5JUWiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/MainThreadInitializedObject;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/MainThreadInitializedObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$Ct0MUhqgOXzo92HEkT8py5JUWiQ;->f$0:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    iput-object p2, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$Ct0MUhqgOXzo92HEkT8py5JUWiQ;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$Ct0MUhqgOXzo92HEkT8py5JUWiQ;->f$0:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$Ct0MUhqgOXzo92HEkT8py5JUWiQ;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->lambda$get$2(Lcom/miui/home/recents/util/MainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
