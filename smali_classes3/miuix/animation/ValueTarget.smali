.class public Lmiuix/animation/ValueTarget;
.super Lmiuix/animation/IAnimTarget;
.source "ValueTarget.java"


# static fields
.field private static final DEFAULT_MIN_VALUE:F = 0.002f

.field static sCreator:Lmiuix/animation/ITargetCreator;


# instance fields
.field private mMaxType:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTargetObj:Lmiuix/animation/property/ValueTargetObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lmiuix/animation/ValueTarget$1;

    invoke-direct {v0}, Lmiuix/animation/ValueTarget$1;-><init>()V

    sput-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lmiuix/animation/ValueTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lmiuix/animation/IAnimTarget;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lmiuix/animation/ValueTarget;->mMaxType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    new-instance v0, Lmiuix/animation/property/ValueTargetObject;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-direct {v0, p1}, Lmiuix/animation/property/ValueTargetObject;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lmiuix/animation/ValueTarget$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private isPredefinedProperty(Ljava/lang/Object;)Z
    .locals 0

    .line 132
    instance-of p0, p1, Lmiuix/animation/property/ValueProperty;

    if-nez p0, :cond_1

    instance-of p0, p1, Lmiuix/animation/property/ViewProperty;

    if-nez p0, :cond_1

    instance-of p0, p1, Lmiuix/animation/property/ColorProperty;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public clean()V
    .locals 0

    return-void
.end method

.method public createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiuix/animation/property/FloatProperty;"
        }
    .end annotation

    .line 121
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_1

    const-class p0, Ljava/lang/Integer;

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance p0, Lmiuix/animation/property/ValueProperty;

    invoke-direct {p0, p1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_1
    :goto_0
    new-instance p0, Lmiuix/animation/property/IntValueProperty;

    invoke-direct {p0, p1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public getDefaultMinVisible()F
    .locals 0

    const p0, 0x3b03126f    # 0.002f

    return p0
.end method

.method public getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;
    .locals 1

    .line 138
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lmiuix/animation/ValueTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;

    move-result-object p0

    return-object p0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getIntValueProperty(Ljava/lang/String;)Lmiuix/animation/property/IIntValueProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result p0

    return p0
.end method

.method public getIntValue(Lmiuix/animation/property/IIntValueProperty;)I
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object p0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiuix/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0

    .line 85
    :cond_1
    iget-object p0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getIntValueProperty(Ljava/lang/String;)Lmiuix/animation/property/IIntValueProperty;
    .locals 1

    .line 142
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lmiuix/animation/ValueTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;

    move-result-object p0

    check-cast p0, Lmiuix/animation/property/IIntValueProperty;

    return-object p0
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .locals 1

    .line 99
    instance-of v0, p1, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lmiuix/animation/property/ColorProperty;

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lmiuix/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public getTargetObject()Ljava/lang/Object;
    .locals 0

    .line 112
    iget-object p0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)F
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p0

    return p0
.end method

.method public getValue(Lmiuix/animation/property/FloatProperty;)F
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object p0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0

    .line 66
    :cond_1
    iget-object p0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public getVelocity(Ljava/lang/String;)D
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide p0

    return-wide p0
.end method

.method public isValid()Z
    .locals 0

    .line 107
    iget-object p0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->isValid()Z

    move-result p0

    return p0
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getIntValueProperty(Ljava/lang/String;)Lmiuix/animation/property/IIntValueProperty;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/ValueTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    return-void
.end method

.method public setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object p0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiuix/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;F)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/ValueTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    return-void
.end method

.method public setValue(Lmiuix/animation/property/FloatProperty;F)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object p0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :goto_0
    return-void
.end method

.method public setVelocity(Ljava/lang/String;D)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/ValueTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    return-void
.end method
