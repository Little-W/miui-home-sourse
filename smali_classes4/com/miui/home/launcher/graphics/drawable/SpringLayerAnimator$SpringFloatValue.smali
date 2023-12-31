.class Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;
.super Ljava/lang/Object;
.source "SpringLayerAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpringFloatValue"
.end annotation


# static fields
.field private static final VALUE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 115
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->VALUE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method constructor <init>(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;FF)V
    .locals 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->VALUE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 135
    invoke-virtual {v1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 136
    invoke-static {p4}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p4

    invoke-virtual {p3, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 134
    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 137
    iget-object p3, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 138
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;)Z
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->isRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;FFF)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->setValues(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->cancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;)F
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->getValue()F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;F)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->setValue(F)V

    return-void
.end method

.method private cancel()V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->cancel(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

.method private getValue()F
    .locals 0

    .line 142
    iget p0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mValue:F

    return p0
.end method

.method private isRunning()Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p0

    return p0
.end method

.method private setValue(F)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mValue:F

    return-void
.end method

.method private setValues(FFF)V
    .locals 1

    .line 154
    iput p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mValue:F

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 156
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 157
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->start(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method
