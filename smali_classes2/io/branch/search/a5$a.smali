.class public final enum Lio/branch/search/a5$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/a5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/a5$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/a5$a;

.field public static final enum b:Lio/branch/search/a5$a;

.field public static final enum c:Lio/branch/search/a5$a;

.field public static final enum d:Lio/branch/search/a5$a;

.field public static final enum e:Lio/branch/search/a5$a;

.field public static final enum f:Lio/branch/search/a5$a;

.field public static final synthetic g:[Lio/branch/search/a5$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lio/branch/search/a5$a;

    const/4 v1, 0x0

    const-string v2, "analytics"

    invoke-direct {v0, v2, v1}, Lio/branch/search/a5$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/search/a5$a;->a:Lio/branch/search/a5$a;

    new-instance v2, Lio/branch/search/a5$a;

    const/4 v3, 0x1

    const-string v4, "remote_config"

    invoke-direct {v2, v4, v3}, Lio/branch/search/a5$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/branch/search/a5$a;->b:Lio/branch/search/a5$a;

    new-instance v4, Lio/branch/search/a5$a;

    const/4 v5, 0x2

    const-string v6, "raw_db"

    invoke-direct {v4, v6, v5}, Lio/branch/search/a5$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/branch/search/a5$a;->c:Lio/branch/search/a5$a;

    new-instance v6, Lio/branch/search/a5$a;

    const/4 v7, 0x3

    const-string v8, "room_db"

    invoke-direct {v6, v8, v7}, Lio/branch/search/a5$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/branch/search/a5$a;->d:Lio/branch/search/a5$a;

    new-instance v8, Lio/branch/search/a5$a;

    const/4 v9, 0x4

    const-string v10, "glide"

    invoke-direct {v8, v10, v9}, Lio/branch/search/a5$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/branch/search/a5$a;->e:Lio/branch/search/a5$a;

    new-instance v10, Lio/branch/search/a5$a;

    const/4 v11, 0x5

    const-string v12, "bundle_update_lock"

    invoke-direct {v10, v12, v11}, Lio/branch/search/a5$a;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/branch/search/a5$a;->f:Lio/branch/search/a5$a;

    const/4 v12, 0x6

    new-array v12, v12, [Lio/branch/search/a5$a;

    aput-object v0, v12, v1

    aput-object v2, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lio/branch/search/a5$a;->g:[Lio/branch/search/a5$a;

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

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/a5$a;
    .locals 1

    const-class v0, Lio/branch/search/a5$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/a5$a;

    return-object p0
.end method

.method public static values()[Lio/branch/search/a5$a;
    .locals 1

    sget-object v0, Lio/branch/search/a5$a;->g:[Lio/branch/search/a5$a;

    invoke-virtual {v0}, [Lio/branch/search/a5$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/a5$a;

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

    move-result-object p0

    return-object p0
.end method
