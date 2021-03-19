.class public Lmiuix/animation/controller/FolmeFont;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeFont.java"

# interfaces
.implements Lmiuix/animation/IVarFontStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/FolmeFont$FontType;
    }
.end annotation


# instance fields
.field private mDefaultTo:Lmiuix/animation/base/AnimConfig;

.field private mInitValue:I

.field private mIsInitSet:Z

.field private mProperty:Lmiuix/animation/font/FontWeightProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 26
    new-array v1, v0, [Lmiuix/animation/IAnimTarget;

    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 22
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mDefaultTo:Lmiuix/animation/base/AnimConfig;

    .line 27
    iget-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mDefaultTo:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    return-void

    nop

    :array_0
    .array-data 4
        0x43af0000    # 350.0f
        0x3f666666    # 0.9f
        0x3f5c28f6    # 0.86f
    .end array-data
.end method


# virtual methods
.method public clean()V
    .locals 1

    .line 42
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 44
    iput-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lmiuix/animation/controller/FolmeFont;->mInitValue:I

    return-void
.end method

.method public varargs to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;
    .locals 4

    .line 50
    iget-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_2

    .line 51
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeFont;->mIsInitSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 52
    iput-boolean v1, p0, Lmiuix/animation/controller/FolmeFont;->mIsInitSet:Z

    .line 53
    iget-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 55
    :cond_0
    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiuix/animation/controller/FolmeFont;->mDefaultTo:Lmiuix/animation/base/AnimConfig;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lmiuix/animation/base/AnimConfig;

    .line 56
    iget v0, p0, Lmiuix/animation/controller/FolmeFont;->mInitValue:I

    if-ne v0, p1, :cond_1

    .line 57
    iget-object p1, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {p1, v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 60
    iget-object p1, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {p1, v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_2
    :goto_0
    return-object p0
.end method
