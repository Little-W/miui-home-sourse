.class public final enum Lmiuix/animation/IVisibleStyle$VisibleType;
.super Ljava/lang/Enum;
.source "IVisibleStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/IVisibleStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VisibleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/animation/IVisibleStyle$VisibleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiuix/animation/IVisibleStyle$VisibleType;

.field public static final enum HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

.field public static final enum SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lmiuix/animation/IVisibleStyle$VisibleType;

    const/4 v1, 0x0

    const-string v2, "SHOW"

    invoke-direct {v0, v2, v1}, Lmiuix/animation/IVisibleStyle$VisibleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    new-instance v0, Lmiuix/animation/IVisibleStyle$VisibleType;

    const/4 v2, 0x1

    const-string v3, "HIDE"

    invoke-direct {v0, v3, v2}, Lmiuix/animation/IVisibleStyle$VisibleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    const/4 v0, 0x2

    new-array v0, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 11
    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v3, v0, v1

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v1, v0, v2

    sput-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->$VALUES:[Lmiuix/animation/IVisibleStyle$VisibleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/animation/IVisibleStyle$VisibleType;
    .locals 1

    .line 11
    const-class v0, Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/animation/IVisibleStyle$VisibleType;

    return-object p0
.end method

.method public static values()[Lmiuix/animation/IVisibleStyle$VisibleType;
    .locals 1

    .line 11
    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->$VALUES:[Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-virtual {v0}, [Lmiuix/animation/IVisibleStyle$VisibleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    return-object v0
.end method
