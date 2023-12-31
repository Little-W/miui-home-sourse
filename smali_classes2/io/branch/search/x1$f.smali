.class public Lio/branch/search/x1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/x1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "db"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/x1$f;->a:Ljava/lang/String;

    return-void
.end method
