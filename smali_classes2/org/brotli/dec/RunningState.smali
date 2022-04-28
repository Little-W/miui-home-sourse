.class final enum Lorg/brotli/dec/RunningState;
.super Ljava/lang/Enum;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/brotli/dec/RunningState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/brotli/dec/RunningState;

.field public static final enum BLOCK_START:Lorg/brotli/dec/RunningState;

.field public static final enum CLOSED:Lorg/brotli/dec/RunningState;

.field public static final enum COMPRESSED_BLOCK_START:Lorg/brotli/dec/RunningState;

.field public static final enum COPY_LOOP:Lorg/brotli/dec/RunningState;

.field public static final enum COPY_UNCOMPRESSED:Lorg/brotli/dec/RunningState;

.field public static final enum COPY_WRAP_BUFFER:Lorg/brotli/dec/RunningState;

.field public static final enum FINISHED:Lorg/brotli/dec/RunningState;

.field public static final enum INSERT_LOOP:Lorg/brotli/dec/RunningState;

.field public static final enum MAIN_LOOP:Lorg/brotli/dec/RunningState;

.field public static final enum READ_METADATA:Lorg/brotli/dec/RunningState;

.field public static final enum TRANSFORM:Lorg/brotli/dec/RunningState;

.field public static final enum UNINITIALIZED:Lorg/brotli/dec/RunningState;

.field public static final enum WRITE:Lorg/brotli/dec/RunningState;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 13
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->UNINITIALIZED:Lorg/brotli/dec/RunningState;

    .line 14
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "BLOCK_START"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->BLOCK_START:Lorg/brotli/dec/RunningState;

    .line 15
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "COMPRESSED_BLOCK_START"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->COMPRESSED_BLOCK_START:Lorg/brotli/dec/RunningState;

    .line 16
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "MAIN_LOOP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->MAIN_LOOP:Lorg/brotli/dec/RunningState;

    .line 17
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "READ_METADATA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->READ_METADATA:Lorg/brotli/dec/RunningState;

    .line 18
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "COPY_UNCOMPRESSED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->COPY_UNCOMPRESSED:Lorg/brotli/dec/RunningState;

    .line 19
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "INSERT_LOOP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->INSERT_LOOP:Lorg/brotli/dec/RunningState;

    .line 20
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "COPY_LOOP"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->COPY_LOOP:Lorg/brotli/dec/RunningState;

    .line 21
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "COPY_WRAP_BUFFER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->COPY_WRAP_BUFFER:Lorg/brotli/dec/RunningState;

    .line 22
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "TRANSFORM"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->TRANSFORM:Lorg/brotli/dec/RunningState;

    .line 23
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "FINISHED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->FINISHED:Lorg/brotli/dec/RunningState;

    .line 24
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "CLOSED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->CLOSED:Lorg/brotli/dec/RunningState;

    .line 25
    new-instance v0, Lorg/brotli/dec/RunningState;

    const-string v1, "WRITE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/brotli/dec/RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/brotli/dec/RunningState;->WRITE:Lorg/brotli/dec/RunningState;

    const/16 v0, 0xd

    .line 12
    new-array v0, v0, [Lorg/brotli/dec/RunningState;

    sget-object v1, Lorg/brotli/dec/RunningState;->UNINITIALIZED:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/brotli/dec/RunningState;->BLOCK_START:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/brotli/dec/RunningState;->COMPRESSED_BLOCK_START:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/brotli/dec/RunningState;->MAIN_LOOP:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/brotli/dec/RunningState;->READ_METADATA:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/brotli/dec/RunningState;->COPY_UNCOMPRESSED:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v7

    sget-object v1, Lorg/brotli/dec/RunningState;->INSERT_LOOP:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v8

    sget-object v1, Lorg/brotli/dec/RunningState;->COPY_LOOP:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v9

    sget-object v1, Lorg/brotli/dec/RunningState;->COPY_WRAP_BUFFER:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v10

    sget-object v1, Lorg/brotli/dec/RunningState;->TRANSFORM:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v11

    sget-object v1, Lorg/brotli/dec/RunningState;->FINISHED:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v12

    sget-object v1, Lorg/brotli/dec/RunningState;->CLOSED:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v13

    sget-object v1, Lorg/brotli/dec/RunningState;->WRITE:Lorg/brotli/dec/RunningState;

    aput-object v1, v0, v14

    sput-object v0, Lorg/brotli/dec/RunningState;->$VALUES:[Lorg/brotli/dec/RunningState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/brotli/dec/RunningState;
    .locals 1

    .line 12
    const-class v0, Lorg/brotli/dec/RunningState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/brotli/dec/RunningState;

    return-object p0
.end method

.method public static values()[Lorg/brotli/dec/RunningState;
    .locals 1

    .line 12
    sget-object v0, Lorg/brotli/dec/RunningState;->$VALUES:[Lorg/brotli/dec/RunningState;

    invoke-virtual {v0}, [Lorg/brotli/dec/RunningState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/brotli/dec/RunningState;

    return-object v0
.end method
