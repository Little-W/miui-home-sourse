.class public final enum Lcom/google/android/filament/View$TargetBufferFlags;
.super Ljava/lang/Enum;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetBufferFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$TargetBufferFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$TargetBufferFlags;

.field public static ALL:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/android/filament/View$TargetBufferFlags;",
            ">;"
        }
    .end annotation
.end field

.field public static ALL_COLOR:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/android/filament/View$TargetBufferFlags;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COLOR0:Lcom/google/android/filament/View$TargetBufferFlags;

.field public static final enum COLOR1:Lcom/google/android/filament/View$TargetBufferFlags;

.field public static final enum COLOR2:Lcom/google/android/filament/View$TargetBufferFlags;

.field public static final enum COLOR3:Lcom/google/android/filament/View$TargetBufferFlags;

.field public static final enum DEPTH:Lcom/google/android/filament/View$TargetBufferFlags;

.field public static DEPTH_STENCIL:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/android/filament/View$TargetBufferFlags;",
            ">;"
        }
    .end annotation
.end field

.field public static NONE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/android/filament/View$TargetBufferFlags;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum STENCIL:Lcom/google/android/filament/View$TargetBufferFlags;


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 466
    new-instance v0, Lcom/google/android/filament/View$TargetBufferFlags;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "COLOR0"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/filament/View$TargetBufferFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR0:Lcom/google/android/filament/View$TargetBufferFlags;

    .line 470
    new-instance v0, Lcom/google/android/filament/View$TargetBufferFlags;

    const/4 v3, 0x2

    const-string v4, "COLOR1"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/filament/View$TargetBufferFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR1:Lcom/google/android/filament/View$TargetBufferFlags;

    .line 474
    new-instance v0, Lcom/google/android/filament/View$TargetBufferFlags;

    const/4 v4, 0x4

    const-string v5, "COLOR2"

    invoke-direct {v0, v5, v3, v4}, Lcom/google/android/filament/View$TargetBufferFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR2:Lcom/google/android/filament/View$TargetBufferFlags;

    .line 478
    new-instance v0, Lcom/google/android/filament/View$TargetBufferFlags;

    const/4 v5, 0x3

    const-string v6, "COLOR3"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v5, v7}, Lcom/google/android/filament/View$TargetBufferFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR3:Lcom/google/android/filament/View$TargetBufferFlags;

    .line 482
    new-instance v0, Lcom/google/android/filament/View$TargetBufferFlags;

    const-string v6, "DEPTH"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v4, v7}, Lcom/google/android/filament/View$TargetBufferFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->DEPTH:Lcom/google/android/filament/View$TargetBufferFlags;

    .line 486
    new-instance v0, Lcom/google/android/filament/View$TargetBufferFlags;

    const/4 v6, 0x5

    const-string v7, "STENCIL"

    const/16 v8, 0x20

    invoke-direct {v0, v7, v6, v8}, Lcom/google/android/filament/View$TargetBufferFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->STENCIL:Lcom/google/android/filament/View$TargetBufferFlags;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/filament/View$TargetBufferFlags;

    .line 462
    sget-object v7, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR0:Lcom/google/android/filament/View$TargetBufferFlags;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR1:Lcom/google/android/filament/View$TargetBufferFlags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR2:Lcom/google/android/filament/View$TargetBufferFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR3:Lcom/google/android/filament/View$TargetBufferFlags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/View$TargetBufferFlags;->DEPTH:Lcom/google/android/filament/View$TargetBufferFlags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/View$TargetBufferFlags;->STENCIL:Lcom/google/android/filament/View$TargetBufferFlags;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->$VALUES:[Lcom/google/android/filament/View$TargetBufferFlags;

    .line 491
    const-class v0, Lcom/google/android/filament/View$TargetBufferFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->NONE:Ljava/util/EnumSet;

    .line 496
    sget-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR0:Lcom/google/android/filament/View$TargetBufferFlags;

    sget-object v1, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR1:Lcom/google/android/filament/View$TargetBufferFlags;

    sget-object v2, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR2:Lcom/google/android/filament/View$TargetBufferFlags;

    sget-object v3, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR3:Lcom/google/android/filament/View$TargetBufferFlags;

    .line 497
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->ALL_COLOR:Ljava/util/EnumSet;

    .line 501
    sget-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->DEPTH:Lcom/google/android/filament/View$TargetBufferFlags;

    sget-object v1, Lcom/google/android/filament/View$TargetBufferFlags;->STENCIL:Lcom/google/android/filament/View$TargetBufferFlags;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->DEPTH_STENCIL:Ljava/util/EnumSet;

    .line 505
    sget-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->COLOR0:Lcom/google/android/filament/View$TargetBufferFlags;

    sget-object v1, Lcom/google/android/filament/View$TargetBufferFlags;->STENCIL:Lcom/google/android/filament/View$TargetBufferFlags;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->ALL:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 509
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 510
    iput p3, p0, Lcom/google/android/filament/View$TargetBufferFlags;->mFlags:I

    return-void
.end method

.method static flags(Ljava/util/EnumSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/google/android/filament/View$TargetBufferFlags;",
            ">;)I"
        }
    .end annotation

    .line 515
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/filament/View$TargetBufferFlags;

    .line 516
    iget v1, v1, Lcom/google/android/filament/View$TargetBufferFlags;->mFlags:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$TargetBufferFlags;
    .locals 1

    .line 462
    const-class v0, Lcom/google/android/filament/View$TargetBufferFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$TargetBufferFlags;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$TargetBufferFlags;
    .locals 1

    .line 462
    sget-object v0, Lcom/google/android/filament/View$TargetBufferFlags;->$VALUES:[Lcom/google/android/filament/View$TargetBufferFlags;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$TargetBufferFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$TargetBufferFlags;

    return-object v0
.end method
