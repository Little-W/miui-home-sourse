.class Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
.super Ljava/lang/Object;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SqlArguments"
.end annotation


# instance fields
.field public final args:[Ljava/lang/String;

.field public final id:J

.field public final table:Ljava/lang/String;

.field public final where:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 2967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2968
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2969
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->selectTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2970
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    .line 2971
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 2972
    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->id:J

    return-void

    .line 2974
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 2945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2946
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2947
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->selectTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    .line 2948
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    .line 2949
    iput-object p3, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 2950
    iput-wide p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->id:J

    goto :goto_1

    .line 2951
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 2953
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2956
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->selectTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    .line 2957
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->id:J

    .line 2958
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const-string p2, "favorites"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2959
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "favorites._id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->id:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    goto :goto_0

    .line 2961
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "screens._id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->id:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    .line 2963
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    :goto_1
    return-void

    .line 2954
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WHERE clause not supported: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2952
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid URI: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private selectTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
