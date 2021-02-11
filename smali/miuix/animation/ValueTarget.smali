.class public Lmiuix/animation/ValueTarget;
.super Lmiuix/animation/IAnimTarget;
.source "ValueTarget.java"


# static fields
.field static sCreator:Lmiuix/animation/ITargetCreator;


# instance fields
.field private mTargetObj:Lmiuix/animation/property/ValueTargetObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lmiuix/animation/ValueTarget$1;

    invoke-direct {v0}, Lmiuix/animation/ValueTarget$1;-><init>()V

    sput-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lmiuix/animation/ValueTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lmiuix/animation/IAnimTarget;-><init>()V

    .line 29
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

    .line 11
    invoke-direct {p0, p1}, Lmiuix/animation/ValueTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDefaultMinVisible()F
    .locals 1

    const v0, 0x3b03126f    # 0.002f

    return v0
.end method

.method public getIntValue(Lmiuix/animation/property/IIntValueProperty;)I
    .locals 2

    .line 66
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiuix/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .locals 1

    .line 80
    instance-of v0, p1, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lmiuix/animation/property/ColorProperty;

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lmiuix/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public getProperty(I)Lmiuix/animation/property/FloatProperty;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTargetObject()Ljava/lang/Object;
    .locals 1

    .line 93
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    return-object v0
.end method

.method public getType(Lmiuix/animation/property/FloatProperty;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getValue(Lmiuix/animation/property/FloatProperty;)F
    .locals 2

    .line 55
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    return p1
.end method

.method public isValid()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0}, Lmiuix/animation/property/ValueTargetObject;->isValid()Z

    move-result v0

    return v0
.end method

.method public setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .locals 2

    .line 61
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiuix/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lmiuix/animation/property/FloatProperty;F)V
    .locals 2

    .line 34
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
