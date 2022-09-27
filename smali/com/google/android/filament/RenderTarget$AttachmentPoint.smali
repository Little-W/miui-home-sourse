.class public final enum Lcom/google/android/filament/RenderTarget$AttachmentPoint;
.super Ljava/lang/Enum;
.source "RenderTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/RenderTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachmentPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/RenderTarget$AttachmentPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/RenderTarget$AttachmentPoint;

.field public static final enum COLOR:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

.field public static final enum COLOR1:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

.field public static final enum COLOR2:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

.field public static final enum COLOR3:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

.field public static final enum COLOR4:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

.field public static final enum COLOR5:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

.field public static final enum COLOR6:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

.field public static final enum COLOR7:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

.field public static final enum DEPTH:Lcom/google/android/filament/RenderTarget$AttachmentPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 56
    new-instance v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    const-string v1, "COLOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    .line 57
    new-instance v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    const-string v1, "COLOR1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR1:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    .line 58
    new-instance v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    const-string v1, "COLOR2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR2:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    .line 59
    new-instance v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    const-string v1, "COLOR3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR3:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    .line 60
    new-instance v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    const-string v1, "COLOR4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR4:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    .line 61
    new-instance v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    const-string v1, "COLOR5"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR5:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    .line 62
    new-instance v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    const-string v1, "COLOR6"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR6:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    .line 63
    new-instance v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    const-string v1, "COLOR7"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR7:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    .line 64
    new-instance v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    const-string v1, "DEPTH"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/google/android/filament/RenderTarget$AttachmentPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->DEPTH:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    const/16 v0, 0x9

    .line 55
    new-array v0, v0, [Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    sget-object v1, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR1:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR2:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR3:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR4:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR5:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR6:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR7:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->DEPTH:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->$VALUES:[Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/RenderTarget$AttachmentPoint;
    .locals 1

    .line 55
    const-class v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/RenderTarget$AttachmentPoint;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->$VALUES:[Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    invoke-virtual {v0}, [Lcom/google/android/filament/RenderTarget$AttachmentPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    return-object v0
.end method
