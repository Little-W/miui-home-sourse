.class public Lcom/miui/maml/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;
    }
.end annotation


# instance fields
.field private mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;
    .locals 3

    .line 28
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "Image"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    new-instance v0, Lcom/miui/maml/elements/ImageScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_0
    const-string v1, "Graphics"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/GraphicsElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1
    const-string v1, "Time"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    new-instance v0, Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_2
    const-string v1, "ImageNumber"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "ImageChars"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v1, "Text"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    new-instance v0, Lcom/miui/maml/elements/TextScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_4
    const-string v1, "DateTime"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 42
    new-instance v0, Lcom/miui/maml/elements/DateTimeScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_5
    const-string v1, "Button"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 44
    new-instance v0, Lcom/miui/maml/elements/ButtonScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_6
    const-string v1, "MusicControl"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_7

    .line 47
    new-instance v0, Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_7
    const-string v1, "ElementGroup"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "Group"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string v1, "Var"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 52
    new-instance v0, Lcom/miui/maml/elements/VariableElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_9
    const-string v1, "VarArray"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 54
    new-instance v0, Lcom/miui/maml/elements/VariableArrayElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_a
    const-string v1, "AutoScaleGroup"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 56
    new-instance v0, Lcom/miui/maml/elements/AutoScaleElementGroup;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AutoScaleElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_b
    const-string v1, "SpectrumVisualizer"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 58
    new-instance v0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_c
    const-string v1, "Slider"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 60
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_d
    const-string v1, "FramerateController"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 62
    new-instance v0, Lcom/miui/maml/elements/FramerateController;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_e
    const-string v1, "FolmeConfig"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 64
    new-instance v0, Lcom/miui/maml/elements/FolmeConfigElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FolmeConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_f
    const-string v1, "FolmeState"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 66
    new-instance v0, Lcom/miui/maml/elements/FolmeStateElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FolmeStateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_10
    const-string v1, "VirtualScreen"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 68
    new-instance v0, Lcom/miui/maml/elements/VirtualScreen;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_11
    const-string v1, "VirtualElement"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 70
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_12
    const-string v1, "Line"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 72
    new-instance v0, Lcom/miui/maml/elements/LineScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/LineScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_13
    const-string v1, "Rectangle"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 74
    new-instance v0, Lcom/miui/maml/elements/RectangleScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/RectangleScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_14
    const-string v1, "Ellipse"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 76
    new-instance v0, Lcom/miui/maml/elements/EllipseScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/EllipseScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_15
    const-string v1, "Circle"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 78
    new-instance v0, Lcom/miui/maml/elements/CircleScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CircleScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_16
    const-string v1, "Arc"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 80
    new-instance v0, Lcom/miui/maml/elements/ArcScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ArcScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_17
    const-string v1, "Curve"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 82
    new-instance v0, Lcom/miui/maml/elements/CurveScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CurveScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_18
    const-string v1, "List"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 84
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_19
    const-string v1, "Paint"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 86
    new-instance v0, Lcom/miui/maml/elements/PaintScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/PaintScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1a
    const-string v1, "Mirror"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 88
    new-instance v0, Lcom/miui/maml/elements/MirrorScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/MirrorScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1b
    const-string v1, "Window"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 90
    new-instance v0, Lcom/miui/maml/elements/WindowScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/WindowScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1c
    const-string v1, "WebView"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 92
    new-instance v0, Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1d
    const-string v1, "Layer"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 94
    new-instance v0, Lcom/miui/maml/elements/LayerScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/LayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1e
    const-string v1, "GLLayer"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 96
    new-instance v0, Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/GLLayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1f
    const-string v1, "Array"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 98
    new-instance v0, Lcom/miui/maml/elements/ScreenElementArray;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_20
    const-string v1, "CanvasDrawer"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 100
    new-instance v0, Lcom/miui/maml/elements/CanvasDrawerElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CanvasDrawerElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_21
    const-string v1, "Function"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 102
    new-instance v0, Lcom/miui/maml/elements/FunctionElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FunctionElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_22
    const-string v1, "AnimConfig"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 104
    new-instance v0, Lcom/miui/maml/elements/AnimConfigElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AnimConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_23
    const-string v1, "AnimState"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 106
    new-instance v0, Lcom/miui/maml/elements/AnimStateElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AnimStateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_24
    const-string v1, "Video"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_25

    .line 109
    new-instance v0, Lcom/miui/maml/elements/video/VideoElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/video/VideoElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_25
    const-string v1, "Pbr"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 111
    new-instance v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    .line 112
    :cond_26
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    if-eqz v0, :cond_29

    .line 113
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;->onCreateInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1

    .line 50
    :cond_27
    :goto_0
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    .line 38
    :cond_28
    :goto_1
    new-instance v0, Lcom/miui/maml/elements/ImageNumberScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string p2, "ScreenElementFactory"

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to create element."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallback()Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    return-object v0
.end method

.method public setCallback(Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    return-void
.end method
