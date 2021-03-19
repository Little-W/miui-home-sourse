.class public final Lcom/miui/maml/shader/ShaderElement$GradientStop;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/shader/ShaderElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "GradientStop"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "GradientStop"


# instance fields
.field private mColorParser:Lcom/miui/maml/util/ColorParser;

.field private mPositionExp:Lcom/miui/maml/data/Expression;

.field final synthetic this$0:Lcom/miui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/shader/ShaderElement;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->this$0:Lcom/miui/maml/shader/ShaderElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object p3, p1, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/util/ColorParser;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 49
    iget-object p1, p1, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string p3, "position"

    invoke-interface {p2, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lcom/miui/maml/data/Expression;

    .line 50
    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lcom/miui/maml/data/Expression;

    if-nez p1, :cond_0

    const-string p1, "GradientStop"

    const-string p2, "lost position attribute."

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mColorParser:Lcom/miui/maml/util/ColorParser;

    invoke-virtual {v0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v0

    return v0
.end method

.method public getPosition()F
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
