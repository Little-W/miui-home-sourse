.class abstract Lkotlin/io/FileTreeWalk$WalkState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/FileTreeWalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WalkState"
.end annotation


# instance fields
.field private final root:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/FileTreeWalk$WalkState;->root:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getRoot()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lkotlin/io/FileTreeWalk$WalkState;->root:Ljava/io/File;

    return-object p0
.end method

.method public abstract step()Ljava/io/File;
.end method
