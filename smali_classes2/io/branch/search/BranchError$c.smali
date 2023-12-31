.class public final Lio/branch/search/BranchError$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/BranchError$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/BranchLocalError;)Lio/branch/search/BranchError;
    .locals 1

    const-string p0, "localError"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lio/branch/search/BranchLocalError$OptedOut;

    if-eqz p0, :cond_0

    sget-object p0, Lio/branch/search/BranchError$j;->a:Lio/branch/search/BranchError$j;

    goto :goto_1

    :cond_0
    instance-of p0, p1, Lio/branch/search/BranchLocalError$WasCancelled;

    if-eqz p0, :cond_1

    sget-object p0, Lio/branch/search/BranchError$u;->a:Lio/branch/search/BranchError$u;

    goto :goto_1

    :cond_1
    instance-of p0, p1, Lio/branch/search/BranchLocalError$Unknown;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lio/branch/search/BranchLocalError$EmptyQuery;

    if-eqz p0, :cond_3

    sget-object p0, Lio/branch/search/BranchError$f;->a:Lio/branch/search/BranchError$f;

    goto :goto_1

    :cond_3
    instance-of p0, p1, Lio/branch/search/BranchLocalError$DBNotReady;

    const-string v0, "localError.internalMessage"

    if-eqz p0, :cond_4

    new-instance p0, Lio/branch/search/BranchError$e;

    check-cast p1, Lio/branch/search/BranchLocalError$DBNotReady;

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError$InvalidDB;->getInternalMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/branch/search/BranchError$e;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of p0, p1, Lio/branch/search/BranchLocalError$CorruptDB;

    if-eqz p0, :cond_5

    new-instance p0, Lio/branch/search/BranchError$d;

    check-cast p1, Lio/branch/search/BranchLocalError$CorruptDB;

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError$InvalidDB;->getInternalMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/branch/search/BranchError$d;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    sget-object p0, Lio/branch/search/BranchError$t;->a:Lio/branch/search/BranchError$t;

    :goto_1
    return-object p0
.end method

.method public final a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;
    .locals 0

    const-string p0, "localError"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorCode()Lio/branch/search/BranchSearchError$ERR_CODE;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/branch/search/g;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lio/branch/search/BranchError$m;->a:Lio/branch/search/BranchError$m;

    goto :goto_1

    :pswitch_1
    sget-object p0, Lio/branch/search/BranchError$o;->a:Lio/branch/search/BranchError$o;

    goto :goto_1

    :pswitch_2
    sget-object p0, Lio/branch/search/BranchError$p;->a:Lio/branch/search/BranchError$p;

    goto :goto_1

    :pswitch_3
    sget-object p0, Lio/branch/search/BranchError$n;->a:Lio/branch/search/BranchError$n;

    goto :goto_1

    :pswitch_4
    sget-object p0, Lio/branch/search/BranchError$q;->a:Lio/branch/search/BranchError$q;

    goto :goto_1

    :pswitch_5
    sget-object p0, Lio/branch/search/BranchError$k;->a:Lio/branch/search/BranchError$k;

    goto :goto_1

    :pswitch_6
    sget-object p0, Lio/branch/search/BranchError$l;->a:Lio/branch/search/BranchError$l;

    goto :goto_1

    :pswitch_7
    sget-object p0, Lio/branch/search/BranchError$g;->a:Lio/branch/search/BranchError$g;

    goto :goto_1

    :pswitch_8
    sget-object p0, Lio/branch/search/BranchError$b;->a:Lio/branch/search/BranchError$b;

    goto :goto_1

    :pswitch_9
    sget-object p0, Lio/branch/search/BranchError$i;->a:Lio/branch/search/BranchError$i;

    goto :goto_1

    :pswitch_a
    sget-object p0, Lio/branch/search/BranchError$h;->a:Lio/branch/search/BranchError$h;

    goto :goto_1

    :pswitch_b
    sget-object p0, Lio/branch/search/BranchError$r;->a:Lio/branch/search/BranchError$r;

    goto :goto_1

    :pswitch_c
    sget-object p0, Lio/branch/search/BranchError$a;->a:Lio/branch/search/BranchError$a;

    goto :goto_1

    :pswitch_d
    sget-object p0, Lio/branch/search/BranchError$s;->a:Lio/branch/search/BranchError$s;

    goto :goto_1

    :goto_0
    sget-object p0, Lio/branch/search/BranchError$t;->a:Lio/branch/search/BranchError$t;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
