.class public final synthetic Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$ZhRymNOq2RLQ75Oafhv4pPWG0N8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/FloatingIconLayer;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/FloatingIconLayer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$ZhRymNOq2RLQ75Oafhv4pPWG0N8;->f$0:Lcom/miui/home/recents/FloatingIconLayer;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$ZhRymNOq2RLQ75Oafhv4pPWG0N8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$ZhRymNOq2RLQ75Oafhv4pPWG0N8;->f$0:Lcom/miui/home/recents/FloatingIconLayer;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$ZhRymNOq2RLQ75Oafhv4pPWG0N8;->f$1:I

    invoke-static {v0, v1}, Lcom/miui/home/recents/FloatingIconLayer;->lambda$drawIcon$313(Lcom/miui/home/recents/FloatingIconLayer;I)V

    return-void
.end method
