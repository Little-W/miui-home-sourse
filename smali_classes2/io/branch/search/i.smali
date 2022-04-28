.class public abstract Lio/branch/search/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/i$e;,
        Lio/branch/search/i$j;,
        Lio/branch/search/i$i;,
        Lio/branch/search/i$l;,
        Lio/branch/search/i$h;,
        Lio/branch/search/i$b;,
        Lio/branch/search/i$f;,
        Lio/branch/search/i$d;,
        Lio/branch/search/i$k;,
        Lio/branch/search/i$c;,
        Lio/branch/search/i$g;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/i$a;

    invoke-direct {v0}, Lio/branch/search/i$a;-><init>()V

    sput-object v0, Lio/branch/search/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/i;->a:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/i;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lio/branch/search/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "@type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "launch_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "app_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "test_installed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "view_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "test_not_installed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "deep_view"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Unknown type!"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v0, Lio/branch/search/i$f;

    invoke-direct {v0, p0, v1}, Lio/branch/search/i$f;-><init>(Lorg/json/JSONObject;Lio/branch/search/i$a;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lio/branch/search/i$b;

    invoke-direct {v0, p0}, Lio/branch/search/i$b;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lio/branch/search/i$i;

    invoke-direct {v0, p0, v1}, Lio/branch/search/i$i;-><init>(Lorg/json/JSONObject;Lio/branch/search/i$a;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lio/branch/search/i$k;

    invoke-direct {v0, p0, v1}, Lio/branch/search/i$k;-><init>(Lorg/json/JSONObject;Lio/branch/search/i$a;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lio/branch/search/i$h;

    invoke-direct {v0, p0, v1}, Lio/branch/search/i$h;-><init>(Lorg/json/JSONObject;Lio/branch/search/i$a;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lio/branch/search/i$d;

    invoke-direct {v0, p0, v1}, Lio/branch/search/i$d;-><init>(Lorg/json/JSONObject;Lio/branch/search/i$a;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lio/branch/search/i$j;

    invoke-direct {v0, p0, v1}, Lio/branch/search/i$j;-><init>(Lorg/json/JSONObject;Lio/branch/search/i$a;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lio/branch/search/i$e;

    invoke-direct {v0, p0, v1}, Lio/branch/search/i$e;-><init>(Lorg/json/JSONObject;Lio/branch/search/i$a;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7607d5e8 -> :sswitch_7
        -0x4aaf9fdf -> :sswitch_6
        -0x468ec964 -> :sswitch_5
        -0x146a23ba -> :sswitch_4
        -0x8e95a8a -> :sswitch_3
        0x79b680d -> :sswitch_2
        0x4596d00c -> :sswitch_1
        0x727d10a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static a(Lio/branch/search/i;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lio/branch/search/i$h;

    if-eqz v0, :cond_0

    const-string p0, "shortcut"

    return-object p0

    :cond_0
    instance-of v0, p0, Lio/branch/search/i$k;

    if-eqz v0, :cond_1

    const-string p0, "view_intent"

    return-object p0

    :cond_1
    instance-of v0, p0, Lio/branch/search/i$d;

    if-eqz v0, :cond_2

    const-string p0, "custom_intent"

    return-object p0

    :cond_2
    instance-of v0, p0, Lio/branch/search/i$e;

    if-eqz v0, :cond_3

    const-string p0, "deepview"

    return-object p0

    :cond_3
    instance-of v0, p0, Lio/branch/search/i$f;

    if-eqz v0, :cond_4

    const-string p0, "launch_intent"

    return-object p0

    :cond_4
    instance-of v0, p0, Lio/branch/search/i$b;

    if-eqz v0, :cond_5

    const-string p0, "app_info_open"

    return-object p0

    :cond_5
    instance-of v0, p0, Lio/branch/search/i$i;

    if-eqz v0, :cond_6

    const-string p0, "test_installed"

    return-object p0

    :cond_6
    instance-of p0, p0, Lio/branch/search/i$j;

    if-eqz p0, :cond_7

    const-string p0, "test_not_installed"

    return-object p0

    :cond_7
    const-string p0, "unknown"

    return-object p0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lio/branch/search/q;)Lio/branch/search/i$g;
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Landroid/content/Context;Lio/branch/search/q;)Z
.end method

.method public c(Landroid/content/Context;Lio/branch/search/q;)Lio/branch/search/i$g;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lio/branch/search/i;->b(Landroid/content/Context;Lio/branch/search/q;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/branch/search/i$g;->a()Lio/branch/search/i$g;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/branch/search/i;->a(Landroid/content/Context;Lio/branch/search/q;)Lio/branch/search/i$g;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lio/branch/search/i;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
