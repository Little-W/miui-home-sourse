.class public final enum Lio/branch/search/o4$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/o4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/o4$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/o4$a;

.field public static final enum b:Lio/branch/search/o4$a;

.field public static final enum c:Lio/branch/search/o4$a;

.field public static final enum d:Lio/branch/search/o4$a;

.field public static final enum e:Lio/branch/search/o4$a;

.field public static final enum f:Lio/branch/search/o4$a;

.field public static final synthetic g:[Lio/branch/search/o4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lio/branch/search/o4$a;

    const-string v1, "analytics"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/search/o4$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/search/o4$a;->a:Lio/branch/search/o4$a;

    new-instance v1, Lio/branch/search/o4$a;

    const-string v3, "remote_config"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/branch/search/o4$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/search/o4$a;->b:Lio/branch/search/o4$a;

    new-instance v3, Lio/branch/search/o4$a;

    const-string v5, "raw_db"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/branch/search/o4$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/branch/search/o4$a;->c:Lio/branch/search/o4$a;

    new-instance v5, Lio/branch/search/o4$a;

    const-string v7, "room_db"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/branch/search/o4$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/branch/search/o4$a;->d:Lio/branch/search/o4$a;

    new-instance v7, Lio/branch/search/o4$a;

    const-string v9, "glide"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/branch/search/o4$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/branch/search/o4$a;->e:Lio/branch/search/o4$a;

    new-instance v9, Lio/branch/search/o4$a;

    const-string v11, "bundle_update_lock"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/branch/search/o4$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/branch/search/o4$a;->f:Lio/branch/search/o4$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/branch/search/o4$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lio/branch/search/o4$a;->g:[Lio/branch/search/o4$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/o4$a;
    .locals 1

    const-class v0, Lio/branch/search/o4$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/o4$a;

    return-object p0
.end method

.method public static values()[Lio/branch/search/o4$a;
    .locals 1

    sget-object v0, Lio/branch/search/o4$a;->g:[Lio/branch/search/o4$a;

    invoke-virtual {v0}, [Lio/branch/search/o4$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/o4$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BNC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
