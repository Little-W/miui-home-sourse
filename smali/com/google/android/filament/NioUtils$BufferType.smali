.class final enum Lcom/google/android/filament/NioUtils$BufferType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/NioUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/NioUtils$BufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum BYTE:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum CHAR:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum DOUBLE:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum FLOAT:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum INT:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum LONG:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum SHORT:Lcom/google/android/filament/NioUtils$BufferType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/filament/NioUtils$BufferType;

    const/4 v1, 0x0

    const-string v2, "BYTE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/NioUtils$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$BufferType;->BYTE:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v0, Lcom/google/android/filament/NioUtils$BufferType;

    const/4 v2, 0x1

    const-string v3, "CHAR"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/NioUtils$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$BufferType;->CHAR:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v0, Lcom/google/android/filament/NioUtils$BufferType;

    const/4 v3, 0x2

    const-string v4, "SHORT"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/NioUtils$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$BufferType;->SHORT:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v0, Lcom/google/android/filament/NioUtils$BufferType;

    const/4 v4, 0x3

    const-string v5, "INT"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/NioUtils$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$BufferType;->INT:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v0, Lcom/google/android/filament/NioUtils$BufferType;

    const/4 v5, 0x4

    const-string v6, "LONG"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/NioUtils$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$BufferType;->LONG:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v0, Lcom/google/android/filament/NioUtils$BufferType;

    const/4 v6, 0x5

    const-string v7, "FLOAT"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/NioUtils$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$BufferType;->FLOAT:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v0, Lcom/google/android/filament/NioUtils$BufferType;

    const/4 v7, 0x6

    const-string v8, "DOUBLE"

    invoke-direct {v0, v8, v7}, Lcom/google/android/filament/NioUtils$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$BufferType;->DOUBLE:Lcom/google/android/filament/NioUtils$BufferType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/filament/NioUtils$BufferType;

    sget-object v8, Lcom/google/android/filament/NioUtils$BufferType;->BYTE:Lcom/google/android/filament/NioUtils$BufferType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/google/android/filament/NioUtils$BufferType;->CHAR:Lcom/google/android/filament/NioUtils$BufferType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/NioUtils$BufferType;->SHORT:Lcom/google/android/filament/NioUtils$BufferType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/NioUtils$BufferType;->INT:Lcom/google/android/filament/NioUtils$BufferType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/NioUtils$BufferType;->LONG:Lcom/google/android/filament/NioUtils$BufferType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/NioUtils$BufferType;->FLOAT:Lcom/google/android/filament/NioUtils$BufferType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/NioUtils$BufferType;->DOUBLE:Lcom/google/android/filament/NioUtils$BufferType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/filament/NioUtils$BufferType;->$VALUES:[Lcom/google/android/filament/NioUtils$BufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/NioUtils$BufferType;
    .locals 1

    const-class v0, Lcom/google/android/filament/NioUtils$BufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/NioUtils$BufferType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/NioUtils$BufferType;
    .locals 1

    sget-object v0, Lcom/google/android/filament/NioUtils$BufferType;->$VALUES:[Lcom/google/android/filament/NioUtils$BufferType;

    invoke-virtual {v0}, [Lcom/google/android/filament/NioUtils$BufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/NioUtils$BufferType;

    return-object v0
.end method
