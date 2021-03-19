.class Lcom/miui/maml/elements/AdvancedSlider$EndPoint;
.super Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field public mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/AdvancedSlider$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mPathX:Lcom/miui/maml/data/Expression;

.field private mPathY:Lcom/miui/maml/data/Expression;

.field private mRawTolerance:I

.field private mTolerance:F

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 810
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    const-string v0, "EndPoint"

    .line 811
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V

    const/16 p1, 0x96

    .line 808
    iput p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 812
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;
    .locals 0

    .line 795
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;FF)Lcom/miui/maml/util/Utils$Point;
    .locals 0

    .line 795
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lcom/miui/maml/util/Utils$Point;

    move-result-object p0

    return-object p0
.end method

.method private getNearestPoint(FF)Lcom/miui/maml/util/Utils$Point;
    .locals 15

    move-object v0, p0

    .line 855
    iget-object v1, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 856
    new-instance v1, Lcom/miui/maml/util/Utils$Point;

    iget-object v2, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$600(Lcom/miui/maml/elements/AdvancedSlider;)F

    move-result v2

    sub-float v2, p1, v2

    float-to-double v2, v2

    iget-object v4, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v4}, Lcom/miui/maml/elements/AdvancedSlider;->access$700(Lcom/miui/maml/elements/AdvancedSlider;)F

    move-result v4

    sub-float v4, p2, v4

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v4, 0x1

    move-wide v5, v2

    move-object v2, v1

    move v1, v4

    .line 861
    :goto_0
    iget-object v3, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 862
    iget-object v3, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v3}, Lcom/miui/maml/elements/AdvancedSlider;->access$600(Lcom/miui/maml/elements/AdvancedSlider;)F

    move-result v3

    sub-float v3, p1, v3

    .line 863
    iget-object v7, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v7}, Lcom/miui/maml/elements/AdvancedSlider;->access$700(Lcom/miui/maml/elements/AdvancedSlider;)F

    move-result v7

    sub-float v7, p2, v7

    .line 864
    iget-object v8, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 865
    iget-object v9, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 866
    new-instance v10, Lcom/miui/maml/util/Utils$Point;

    invoke-virtual {v8}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v8}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v8

    float-to-double v13, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 867
    new-instance v8, Lcom/miui/maml/util/Utils$Point;

    invoke-virtual {v9}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v9}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v9

    float-to-double v13, v9

    invoke-direct {v8, v11, v12, v13, v14}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 868
    new-instance v9, Lcom/miui/maml/util/Utils$Point;

    float-to-double v11, v3

    float-to-double v13, v7

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 869
    invoke-static {v10, v8, v9, v4}, Lcom/miui/maml/util/Utils;->pointProjectionOnSegment(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)Lcom/miui/maml/util/Utils$Point;

    move-result-object v3

    const/4 v7, 0x0

    .line 870
    invoke-static {v3, v9, v7}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    move-result-wide v7

    cmpg-double v9, v7, v5

    if-gez v9, :cond_1

    move-object v2, v3

    move-wide v5, v7

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 0

    .line 816
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    .line 817
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .locals 10

    const-string v0, "Path"

    .line 900
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 902
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    return-void

    :cond_0
    const-string v0, "tolerance"

    const/16 v1, 0x96

    .line 905
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 908
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "x"

    .line 909
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lcom/miui/maml/data/Expression;

    const-string v1, "y"

    .line 910
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lcom/miui/maml/data/Expression;

    const-string v1, "Position"

    .line 911
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    move v7, v1

    .line 912
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 913
    invoke-interface {p1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/Element;

    .line 914
    iget-object v8, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    new-instance v9, Lcom/miui/maml/elements/AdvancedSlider$Position;

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    iget-object v5, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lcom/miui/maml/data/Expression;

    iget-object v6, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lcom/miui/maml/data/Expression;

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/elements/AdvancedSlider$Position;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .locals 5

    const-string v0, "Intent"

    .line 919
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "Command"

    .line 920
    invoke-static {p1, v1}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "Trigger"

    .line 921
    invoke-static {p1, v2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 925
    :cond_0
    new-instance v2, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    iput-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_1

    .line 927
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    new-instance v1, Lcom/miui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/miui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    iput-object v1, p1, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 929
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-static {v1, v0}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 930
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object p1, p1, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    if-nez p1, :cond_3

    const-string p1, "LockScreen_AdvancedSlider"

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid Command element: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 934
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    new-instance v1, Lcom/miui/maml/CommandTrigger;

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object v1, v0, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 831
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->finish()V

    .line 832
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->finish()V

    :cond_0
    return-void
.end method

.method public getTransformedDist(Lcom/miui/maml/util/Utils$Point;FF)F
    .locals 4

    .line 883
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const p1, 0x7effffff

    return p1

    :cond_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    if-nez p1, :cond_1

    return v0

    .line 889
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$600(Lcom/miui/maml/elements/AdvancedSlider;)F

    move-result v1

    sub-float/2addr p2, v1

    .line 890
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$700(Lcom/miui/maml/elements/AdvancedSlider;)F

    move-result v1

    sub-float/2addr p3, v1

    .line 891
    new-instance v1, Lcom/miui/maml/util/Utils$Point;

    float-to-double v2, p2

    float-to-double p2, p3

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    const/4 p2, 0x1

    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    move-result-wide p1

    double-to-float p1, p1

    .line 892
    iget p2, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method public init()V
    .locals 2

    .line 822
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    .line 823
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->init()V

    .line 826
    :cond_0
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->scale(D)F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    return-void
.end method

.method protected onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V
    .locals 2

    .line 940
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$State;->Invalid:Lcom/miui/maml/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_0

    return-void

    .line 944
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$1;->$SwitchMap$com$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Lcom/miui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mReachedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    .line 952
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 839
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->pause()V

    .line 840
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 847
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->resume()V

    .line 848
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->resume()V

    :cond_0
    return-void
.end method
