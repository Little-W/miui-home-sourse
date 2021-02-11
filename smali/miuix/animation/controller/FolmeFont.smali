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

    .line 25
    new-array v1, v0, [Lmiuix/animation/IAnimTarget;

    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 21
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mDefaultTo:Lmiuix/animation/base/AnimConfig;

    .line 26
    iget-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mDefaultTo:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    iput-object v0, v1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-void

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

    .line 41
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 43
    iput-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lmiuix/animation/controller/FolmeFont;->mInitValue:I

    return-void
.end method

.method public varargs to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;
    .locals 3

    .line 49
    iget-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_2

    .line 50
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeFont;->mIsInitSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 51
    iput-boolean v1, p0, Lmiuix/animation/controller/FolmeFont;->mIsInitSet:Z

    .line 52
    iget-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 54
    :cond_0
    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mDefaultTo:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lmiuix/animation/base/AnimConfig;

    .line 55
    iget v0, p0, Lmiuix/animation/controller/FolmeFont;->mInitValue:I

    if-ne v0, p1, :cond_1

    .line 56
    iget-object p1, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {p1, v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeFont;->mProperty:Lmiuix/animation/font/FontWeightProperty;

    new-array v2, v2, [J

    invoke-virtual {v0, v1, p1, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    .line 59
    iget-object p1, p0, Lmiuix/animation/controller/FolmeFont;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-interface {p1, v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_2
    :goto_0
    return-object p0
.end method
