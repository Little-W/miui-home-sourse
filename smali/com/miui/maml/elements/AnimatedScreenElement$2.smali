.class Lcom/miui/maml/elements/AnimatedScreenElement$2;
.super Ljava/lang/Object;
.source "AnimatedScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/AnimatedScreenElement;->folmeSetTo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

.field final synthetic val$stateName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->val$stateName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->val$stateName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->access$100(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    return-void
.end method
