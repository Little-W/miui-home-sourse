.class public Lcom/xiaomi/onetrack/h/aa;
.super Ljava/lang/Object;


# static fields
.field private static final A:Ljava/lang/String; = "onetrack_user_id"

.field private static final B:Ljava/lang/String; = "onetrack_user_type"

.field private static final C:Ljava/lang/String; = "custom_id"

.field private static final D:Ljava/lang/String; = "page_end"

.field private static final E:Ljava/lang/String; = "last_app_version"

.field private static final F:Ljava/lang/String; = "first_launch_time"

.field private static final a:Ljava/lang/String; = "onetrack"

.field private static final b:Ljava/lang/String; = "one_track_pref"

.field private static c:Landroid/content/SharedPreferences; = null

.field private static d:Landroid/content/SharedPreferences$Editor; = null

.field private static final e:Ljava/lang/String; = "last_upload_active_time"

.field private static final f:Ljava/lang/String; = "last_upload_usage_time"

.field private static final g:Ljava/lang/String; = "last_collect_crash_time"

.field private static final h:Ljava/lang/String; = "report_crash_ticket"

.field private static final i:Ljava/lang/String; = "last_secret_key_time"

.field private static final j:Ljava/lang/String; = "last_common_cloud_time"

.field private static final k:Ljava/lang/String; = "next_update_common_conf_time"

.field private static final l:Ljava/lang/String; = "common_cloud_data"

.field private static final m:Ljava/lang/String; = "common_config_hash"

.field private static final n:Ljava/lang/String; = "s_t"

.field private static final o:Ljava/lang/String; = "l_t"

.field private static final p:Ljava/lang/String; = "e_t"

.field private static final q:Ljava/lang/String; = "secret_key_data"

.field private static final r:Ljava/lang/String; = "region_rul"

.field private static final s:Ljava/lang/String; = "pref_instance_id"

.field private static final t:Ljava/lang/String; = "pref_instance_id_last_use_time"

.field private static final u:Ljava/lang/String; = "last_usage_resume_component"

.field private static final v:Ljava/lang/String; = "last_usage_resume_time"

.field private static final w:Ljava/lang/String; = "network_access_enabled"

.field private static final x:Ljava/lang/String; = "anonymous_enabled"

.field private static final y:Ljava/lang/String; = "onetrack_first_open"

.field private static final z:Ljava/lang/String; = "dau_last_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Ljava/lang/String;
    .locals 2

    const-string v0, "last_app_version"

    const-string v1, ""

    .line 333
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static B()J
    .locals 3

    const-string v0, "first_launch_time"

    const-wide/16 v1, 0x0

    .line 337
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static C()V
    .locals 4

    .line 54
    sget-object v0, Lcom/xiaomi/onetrack/h/aa;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    const-class v0, Lcom/xiaomi/onetrack/h/aa;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/h/aa;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_1

    .line 59
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "one_track_pref"

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/h/aa;->c:Landroid/content/SharedPreferences;

    .line 61
    sget-object v1, Lcom/xiaomi/onetrack/h/aa;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/h/aa;->d:Landroid/content/SharedPreferences$Editor;

    .line 63
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a()J
    .locals 3

    const-string v0, "last_upload_active_time"

    const-wide/16 v1, 0x0

    .line 112
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;J)J
    .locals 1

    .line 77
    invoke-static {}, Lcom/xiaomi/onetrack/h/aa;->C()V

    .line 78
    sget-object v0, Lcom/xiaomi/onetrack/h/aa;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "custom_id"

    const-string v0, ""

    .line 312
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 67
    invoke-static {}, Lcom/xiaomi/onetrack/h/aa;->C()V

    .line 68
    sget-object v0, Lcom/xiaomi/onetrack/h/aa;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(J)V
    .locals 1

    const-string v0, "last_upload_active_time"

    .line 116
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p0, "custom_id"

    .line 308
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "secret_key_data"

    .line 168
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;F)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/xiaomi/onetrack/h/aa;->C()V

    .line 98
    sget-object v0, Lcom/xiaomi/onetrack/h/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    const-string v0, "network_access_enabled"

    .line 255
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 1

    .line 87
    invoke-static {}, Lcom/xiaomi/onetrack/h/aa;->C()V

    .line 88
    sget-object v0, Lcom/xiaomi/onetrack/h/aa;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;F)F
    .locals 1

    .line 102
    invoke-static {}, Lcom/xiaomi/onetrack/h/aa;->C()V

    .line 103
    sget-object v0, Lcom/xiaomi/onetrack/h/aa;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static b()J
    .locals 3

    const-string v0, "last_collect_crash_time"

    const-wide/16 v1, 0x0

    .line 128
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)J
    .locals 1

    const-string v0, "last_upload_usage_time"

    .line 120
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "region_rul"

    .line 177
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;J)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/xiaomi/onetrack/h/aa;->C()V

    .line 83
    sget-object v0, Lcom/xiaomi/onetrack/h/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/xiaomi/onetrack/h/aa;->C()V

    .line 73
    sget-object v0, Lcom/xiaomi/onetrack/h/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b(Ljava/lang/String;Z)V
    .locals 1

    .line 92
    invoke-static {}, Lcom/xiaomi/onetrack/h/aa;->C()V

    .line 93
    sget-object v0, Lcom/xiaomi/onetrack/h/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Z)V
    .locals 1

    const-string v0, "anonymous_enabled"

    .line 264
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static c()J
    .locals 3

    const-string v0, "report_crash_ticket"

    const-wide/16 v1, 0x0

    .line 136
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(J)V
    .locals 1

    const-string v0, "last_collect_crash_time"

    .line 124
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "common_config_hash"

    .line 202
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Z)V
    .locals 1

    const-string v0, "onetrack_first_open"

    .line 268
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static d()J
    .locals 3

    const-string v0, "s_t"

    const-wide/16 v1, 0x0

    .line 144
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(J)V
    .locals 1

    const-string v0, "report_crash_ticket"

    .line 132
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "common_cloud_data"

    .line 210
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()J
    .locals 3

    const-string v0, "l_t"

    const-wide/16 v1, 0x0

    .line 152
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(J)V
    .locals 1

    const-string v0, "last_upload_usage_time"

    .line 140
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_instance_id"

    .line 222
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/xiaomi/onetrack/h/ac;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->k(J)V

    return-void
.end method

.method public static f()J
    .locals 3

    const-string v0, "e_t"

    const-wide/16 v1, 0x0

    .line 160
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(J)V
    .locals 1

    const-string v0, "s_t"

    .line 148
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "last_usage_resume_component"

    .line 239
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    const-string v0, "secret_key_data"

    const-string v1, ""

    .line 173
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(J)V
    .locals 1

    const-string v0, "l_t"

    .line 156
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onetrack_user_id"

    .line 284
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    const-string v0, "region_rul"

    const-string v1, ""

    .line 181
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(J)V
    .locals 1

    const-string v0, "e_t"

    .line 164
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onetrack_user_type"

    .line 296
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i()J
    .locals 3

    const-string v0, "last_secret_key_time"

    const-wide/16 v1, 0x0

    .line 190
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(J)V
    .locals 1

    const-string v0, "last_secret_key_time"

    .line 186
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "page_end"

    .line 325
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j()J
    .locals 3

    const-string v0, "next_update_common_conf_time"

    const-wide/16 v1, 0x0

    .line 198
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static j(J)V
    .locals 1

    const-string v0, "next_update_common_conf_time"

    .line 194
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1

    const-string v0, "last_app_version"

    .line 329
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    const-string v0, "common_config_hash"

    const-string v1, ""

    .line 206
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(J)V
    .locals 1

    const-string v0, "pref_instance_id_last_use_time"

    .line 231
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method private static k(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-static {}, Lcom/xiaomi/onetrack/h/aa;->C()V

    .line 108
    sget-object v0, Lcom/xiaomi/onetrack/h/aa;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    const-string v0, "common_cloud_data"

    const-string v1, ""

    .line 214
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(J)V
    .locals 1

    const-string v0, "last_usage_resume_time"

    .line 247
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_instance_id"

    const-string v1, ""

    .line 218
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(J)V
    .locals 1

    const-string v0, "dau_last_time"

    .line 280
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static n()J
    .locals 3

    const-string v0, "pref_instance_id_last_use_time"

    const-wide/16 v1, 0x0

    .line 227
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static n(J)V
    .locals 1

    const-string v0, "first_launch_time"

    .line 341
    invoke-static {v0, p0, p1}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    const-string v0, "last_usage_resume_component"

    const-string v1, ""

    .line 235
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()J
    .locals 3

    const-string v0, "last_usage_resume_time"

    const-wide/16 v1, 0x0

    .line 243
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static q()Z
    .locals 2

    const-string v0, "network_access_enabled"

    const/4 v1, 0x1

    .line 251
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r()Z
    .locals 2

    const-string v0, "anonymous_enabled"

    const/4 v1, 0x0

    .line 260
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s()Z
    .locals 2

    const-string v0, "onetrack_first_open"

    const/4 v1, 0x1

    .line 272
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static t()J
    .locals 3

    const-string v0, "dau_last_time"

    const-wide/16 v1, 0x0

    .line 276
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static u()Ljava/lang/String;
    .locals 2

    const-string v0, "onetrack_user_id"

    const-string v1, ""

    .line 288
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v()V
    .locals 1

    const-string v0, "onetrack_user_id"

    .line 292
    invoke-static {v0}, Lcom/xiaomi/onetrack/h/aa;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static w()Ljava/lang/String;
    .locals 2

    const-string v0, "onetrack_user_type"

    const-string v1, ""

    .line 300
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x()V
    .locals 1

    const-string v0, "onetrack_user_type"

    .line 304
    invoke-static {v0}, Lcom/xiaomi/onetrack/h/aa;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static y()J
    .locals 3

    const-string v0, "network_access_enabled"

    const-wide/16 v1, 0x0

    .line 316
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static z()Ljava/lang/String;
    .locals 2

    const-string v0, "page_end"

    const-string v1, ""

    .line 320
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
