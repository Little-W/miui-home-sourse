.class Lmiuix/animation/physics/DynamicAnimation$1;
.super Lmiuix/animation/property/FloatProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/physics/DynamicAnimation;-><init>(Lmiuix/animation/property/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/physics/DynamicAnimation;

.field final synthetic val$floatValueHolder:Lmiuix/animation/property/FloatValueHolder;


# direct methods
.method constructor <init>(Lmiuix/animation/physics/DynamicAnimation;Ljava/lang/String;Lmiuix/animation/property/FloatValueHolder;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lmiuix/animation/physics/DynamicAnimation$1;->this$0:Lmiuix/animation/physics/DynamicAnimation;

    iput-object p3, p0, Lmiuix/animation/physics/DynamicAnimation$1;->val$floatValueHolder:Lmiuix/animation/property/FloatValueHolder;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    .line 121
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation$1;->val$floatValueHolder:Lmiuix/animation/property/FloatValueHolder;

    invoke-virtual {p0}, Lmiuix/animation/property/FloatValueHolder;->getValue()F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 126
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation$1;->val$floatValueHolder:Lmiuix/animation/property/FloatValueHolder;

    invoke-virtual {p0, p2}, Lmiuix/animation/property/FloatValueHolder;->setValue(F)V

    return-void
.end method
