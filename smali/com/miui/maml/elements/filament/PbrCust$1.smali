.class Lcom/miui/maml/elements/filament/PbrCust$1;
.super Ljava/lang/Object;
.source "PbrCust.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/filament/PbrCust;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/filament/PbrCust;

.field final synthetic val$root:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/filament/PbrCust;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/miui/maml/elements/filament/PbrCust$1;->this$0:Lcom/miui/maml/elements/filament/PbrCust;

    iput-object p2, p0, Lcom/miui/maml/elements/filament/PbrCust$1;->val$root:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 120
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2777e7b

    if-eq v1, v2, :cond_1

    const v2, 0x40bd156

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Final"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "Offscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust$1;->this$0:Lcom/miui/maml/elements/filament/PbrCust;

    invoke-static {v0}, Lcom/miui/maml/elements/filament/PbrCust;->access$100(Lcom/miui/maml/elements/filament/PbrCust;)Lcom/miui/maml/elements/filament/CustFinal;

    move-result-object v0

    if-nez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust$1;->this$0:Lcom/miui/maml/elements/filament/PbrCust;

    new-instance v1, Lcom/miui/maml/elements/filament/CustFinal;

    iget-object v2, v0, Lcom/miui/maml/elements/filament/PbrCust;->mResMgr:Lcom/miui/maml/ResourceManager;

    iget-object v3, p0, Lcom/miui/maml/elements/filament/PbrCust$1;->val$root:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2, v3}, Lcom/miui/maml/elements/filament/CustFinal;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-static {v0, v1}, Lcom/miui/maml/elements/filament/PbrCust;->access$102(Lcom/miui/maml/elements/filament/PbrCust;Lcom/miui/maml/elements/filament/CustFinal;)Lcom/miui/maml/elements/filament/CustFinal;

    goto :goto_2

    .line 123
    :pswitch_1
    new-instance v0, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrCust$1;->this$0:Lcom/miui/maml/elements/filament/PbrCust;

    iget-object v1, v1, Lcom/miui/maml/elements/filament/PbrCust;->mResMgr:Lcom/miui/maml/ResourceManager;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrCust$1;->val$root:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/maml/elements/filament/CustFrameBuffer;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V

    .line 124
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrCust$1;->this$0:Lcom/miui/maml/elements/filament/PbrCust;

    invoke-static {p1}, Lcom/miui/maml/elements/filament/PbrCust;->access$000(Lcom/miui/maml/elements/filament/PbrCust;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/CustFrameBuffer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
